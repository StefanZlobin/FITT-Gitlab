import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/age_utils.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/features/workouts/presentation/components/buttons/admin_workout_action_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AdminPreviewWorkoutCard extends StatelessWidget {
  const AdminPreviewWorkoutCard({
    super.key,
    required this.adminWorkout,
  });

  final AdminWorkout adminWorkout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AdminWorkoutCubit>()
            .getAdminWorkout(adminWorkoutUuid: adminWorkout.uuid!);
        context.pushNamed(
          AppRoute.adminWorkout.routeToPath,
          extra: !(adminWorkout.status == WorkoutStatusEnum.finished ||
              adminWorkout.status == WorkoutStatusEnum.forceFinish ||
              adminWorkout.status == WorkoutStatusEnum.missed ||
              adminWorkout.status == WorkoutStatusEnum.canceled),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: superellipseRadius(24),
          ),
          shadows: [
            BoxShadow(
              color: AppColors.kOxford10.withOpacity(0.9),
              blurRadius: 24,
              offset: const Offset(0, 20),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  DateTimeUtils.timeFormat.format(adminWorkout.planStartTime),
                  style: AppTypography.kNum48.apply(color: AppColors.kOxford60),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${adminWorkout.user.fullname}',
                        style: AppTypography.kH14
                            .apply(color: AppColors.kOxford60),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          if (adminWorkout.key != null) ...[
                            const Icon(
                              AppIcons.lockers,
                              size: 10,
                              color: AppColors.kOxford60,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${adminWorkout.key}',
                              style: AppTypography.kBody14
                                  .apply(color: AppColors.kOxford60),
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            'ID ${adminWorkout.user.userId}',
                            style: AppTypography.kBody14
                                .apply(color: AppColors.kOxford60),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              '${adminWorkout.user.gender!.genderEnumToLabeling(adminWorkout.user.gender!)} - ${ageUtils(adminWorkout.user.age)}',
                              style: AppTypography.kBody14
                                  .apply(color: AppColors.kOxford40),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                    ],
                  ),
                ),
              ],
            ),
            AdminWorkoutActionButton(adminWorkout: adminWorkout),
          ],
        ),
      ),
    );
  }
}
