import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/workouts/domain/blocs/workout/workout_bloc.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArchiveWorkoutCard extends StatelessWidget {
  const ArchiveWorkoutCard({
    Key? key,
    required this.workout,
    this.isPage = false,
    this.margin = const EdgeInsets.fromLTRB(16, 24, 16, 13),
  }) : super(key: key);

  final Workout workout;
  final EdgeInsets margin;
  final bool isPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!isPage) {
          getIt<WorkoutBloc>()
              .add(WorkoutEvent.getWorkout(workoutUuid: workout.uuid));
          context.pushNamed(
            AppRoute.workout.routeToPath,
            extra: true,
          );
        }
      },
      child: Container(
        margin: margin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCardHeader(context),
            const SizedBox(height: 4),
            const Separator(
              width: 40,
              height: 2,
              color: AppColors.kPrimaryBlue,
              margin: EdgeInsets.only(bottom: 5, top: 16),
            ),
            if (isPage)
              AppElevatedButton(
                textButton: const Text('Повторить тренировку'),
                marginButton: const EdgeInsets.only(top: 16),
                onPressed: () {
                  context.pushNamed(
                    AppRoute.club.routeToPath,
                    params: {
                      'clubUuid': workout.club.uuid!,
                    },
                  );
                },
              )
            else
              TextButton(
                // ignore: no-empty-block
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                child: Text(
                  'Повторить тренировку',
                  style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: isPage
              ? MediaQuery.of(context).size.width - 32
              : MediaQuery.of(context).size.width - 70,
          child: RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text:
                  '${_howWorkoutEnd()} ${DateTimeUtils.dateFormatWithoutYear.format(workout.startTime)}\n',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
              children: [
                TextSpan(
                  text: '${workout.club.label}',
                  style: AppTypography.kH24B.apply(color: AppColors.kOxford),
                ),
              ],
            ),
          ),
        ),
        if (!isPage) const Icon(AppIcons.arr_right),
      ],
    );
  }

  String _howWorkoutEnd() {
    switch (workout.status) {
      case WorkoutStatusEnum.missed:
        return 'Завершена системой';
      case WorkoutStatusEnum.forceFinish:
        return 'Завершена администратором';
      case WorkoutStatusEnum.canceled:
        return 'Отменена пользователем';
      case WorkoutStatusEnum.finished:
        return 'Завершена успешно';
      // ignore: no_default_cases
      default:
        return '';
    }
  }
}
