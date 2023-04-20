import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/timer_utils.dart';
import 'package:fitt/domain/blocs/workout_timer/workout_timer_bloc.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/presentation/components/buttons/workout_action_button.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    super.key,
    required this.workout,
    this.isPage = false,
    this.margin = const EdgeInsets.fromLTRB(16, 24, 16, 24),
    this.showHeader = true,
    this.showInviteFreindsButton = true,
  });

  final Workout workout;
  final EdgeInsets margin;
  final bool isPage;
  final bool showHeader;
  final bool showInviteFreindsButton;

  @override
  Widget build(BuildContext context) {
    final workoutTimerBloc = getIt<WorkoutTimerBloc>();
    workoutTimerBloc.add(WorkoutTimerEvent.timerStarted(
      workout: workout,
      duration: workout.status == WorkoutStatusEnum.started
          ? workout.canEndTime.difference(DateTime.now())
          : workout.startTime.difference(DateTime.now()),
    ));

    return GestureDetector(
      onTap: () async {
        if (!isPage) {
          await getIt<WorkoutCubit>()
              .getWorkout(workoutUuid: workout.uuid)
              .then((value) => context.pushNamed(
                    AppRoute.workout.routeToPath,
                    extra: false,
                  ));
        }
      },
      child: Container(
        margin: margin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showHeader) _buildCardHeader(context),
            Divider(
              color: AppColors.kPrimaryBlue,
              endIndent: MediaQuery.of(context).size.width - 70,
              thickness: 2,
              height: 32,
            ),
            _buildWorkoutTimeInformationWidget(workoutTimerBloc),
            const SizedBox(height: 16),
            WorkoutActionButton(workout: workout),
            if (showInviteFreindsButton)
              AppElevatedButton(
                marginButton: const EdgeInsets.only(top: 16),
                buttonColor: AppColors.kBaseBlack,
                textButton: const Text('Позвать друзей на тренировку'),
                onPressed: () {
                  showDialog<void>(
                    useRootNavigator: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        title: const Text(
                          'Данный функционал еще не реализован',
                          style: AppTypography.kBody14,
                        ),
                        actions: [
                          AppElevatedButton(
                            textButton: const Text('Ясно'),
                            onPressed: () => context.pop(),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutTimeInformationWidget(WorkoutTimerBloc bloc) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 144,
              child: BlocBuilder<WorkoutTimerBloc, WorkoutTimerState>(
                bloc: bloc,
                builder: (context, state) {
                  return state.when(
                    timerInitial: (_) {
                      return Text(
                        workout.status != WorkoutStatusEnum.started
                            ? 'Начало через'
                            : 'До окончания',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford60),
                      );
                    },
                    timerRunInProgress: (duration) {
                      return Text(
                        workout.status != WorkoutStatusEnum.started
                            ? 'Начало через'
                            : 'До окончания',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford60),
                      );
                    },
                    timerRunInDanger: (duration) {
                      return Text(
                        workout.status != WorkoutStatusEnum.started
                            ? 'Тренировка идет'
                            : 'До окончания',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford60),
                      );
                    },
                    timerRunComplete: (duration) {
                      return Text(
                        workout.status != WorkoutStatusEnum.started
                            ? 'Начало через'
                            : 'До окончания',
                        style: AppTypography.kBody14
                            .apply(color: AppColors.kOxford60),
                      );
                    },
                  );
                },
              ),
            ),
            _buildWorkoutTimer(bloc),
          ],
        ),
        const Separator(
          color: AppColors.kPrimaryBlue,
          height: 72,
          width: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workout.status != WorkoutStatusEnum.started
                  ? 'Начало тренировки'
                  : 'Окончание',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            ),
            Text(
              DateTimeUtils.timeFormat.format(
                workout.status == WorkoutStatusEnum.planned
                    ? workout.startTime
                    : workout.endTime,
              ),
              style: AppTypography.kH14.apply(color: AppColors.kOxford),
            ),
            const SizedBox(height: 4),
            Text(
              workout.status != WorkoutStatusEnum.started
                  ? 'Окончание'
                  : 'Выход из клуба до',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
            ),
            Text(
              DateTimeUtils.timeFormat.format(
                workout.status == WorkoutStatusEnum.planned
                    ? workout.endTime
                    : workout.canEndTime,
              ),
              style: AppTypography.kH14.apply(color: AppColors.kOxford),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildWorkoutTimer(WorkoutTimerBloc bloc) {
    return BlocBuilder<WorkoutTimerBloc, WorkoutTimerState>(
      bloc: bloc,
      builder: (context, state) {
        if (workout.endTime.isBefore(DateTime.now()) &&
            workout.status == WorkoutStatusEnum.planned) {
          bloc.add(const WorkoutTimerEvent.timerComplete());
        }
        return state.when(
          timerInitial: (duration) => Text(duration.toString()),
          timerRunInProgress: (duration) => Text(
            TimerUtils.createTimerString(duration),
            style: AppTypography.kNum36.apply(
              color: AppColors.kPrimaryBlue,
            ),
          ),
          timerRunInDanger: (duration) => Text(
            TimerUtils.createTimerString(
              workout.status == WorkoutStatusEnum.planned
                  ? duration.abs()
                  : duration,
            ),
            style: AppTypography.kNum36.apply(
              color: workout.status == WorkoutStatusEnum.planned
                  ? AppColors.kPrimaryBlue
                  : AppColors.kPrimaryRed,
            ),
          ),
          timerRunComplete: (duration) => Text(
            TimerUtils.createTimerString(duration),
            style: AppTypography.kNum36.apply(
              color: AppColors.kPrimaryBlue,
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: isPage ? null : MediaQuery.of(context).size.width - 70,
          child: RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              text:
                  '${DateTimeUtils.dateFormatWithoutYear.format(workout.startTime)}\n',
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
}
