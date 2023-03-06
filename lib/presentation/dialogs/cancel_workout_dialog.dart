import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/cubits/archive_workouts/archive_workouts_cubit.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workouts/workouts_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CancelWorkoutDialog extends StatelessWidget {
  const CancelWorkoutDialog({
    Key? key,
    required this.workout,
  }) : super(key: key);

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titlePadding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      title: const Text('Отменить тренировку'),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kOxford),
      content: const Text(
        'Средства вернутся на карту в соответствии с правилами банка',
      ),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      actions: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 40,
                child: OutlinedButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    'Вернуться',
                    style:
                        AppTypography.kBody14.apply(color: AppColors.kOxford60),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 5,
              child: SizedBox(
                height: 40,
                child: AppElevatedButton(
                  isHeight: false,
                  onPressedAsync: () async {
                    await getIt<WorkoutCubit>()
                        .cancelWorkout(w: workout)
                        .then((value) {
                      getIt<LocalNotificationsService>()
                          .deleteLocalNotification(
                        id: workout.workoutHashCode,
                      );
                      getIt<LocalNotificationsService>()
                          .deleteLocalNotification(
                        id: workout.workoutHashCode - 2,
                      );
                      getIt<WorkoutsCubit>().getWorkouts();
                      getIt<ArchiveWorkoutsCubit>().offset = 0;
                      getIt<ArchiveWorkoutsCubit>().getArchiveWorkouts(
                        needClearLoadedWorkouts: true,
                      );
                      context.pushNamed(
                        AppRoute.workoutArchiveList.routeToPath,
                        extra: true,
                      );
                    });
                  },
                  marginButton: const EdgeInsets.all(0),
                  textButton: Text('Отменить тренировку',
                      style: AppTypography.kBody14
                          .apply(color: AppColors.kBaseWhite)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
