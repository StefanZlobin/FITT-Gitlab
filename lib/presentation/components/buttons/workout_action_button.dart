import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workout_slider_button_type/workout_slider_button_type_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/components/buttons/app_button_slider_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutActionButton extends StatelessWidget {
  const WorkoutActionButton({
    super.key,
    required this.workout,
    this.showBeforeCanStart = true,
  });

  final Workout workout;
  final bool showBeforeCanStart;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<WorkoutSliderButtonTypeCubit>();

    switch (workout.status) {
      case WorkoutStatusEnum.planned:
        bloc.setStartTypeSliderButton();
        break;
      case WorkoutStatusEnum.requiresStart:
        bloc.setStartTypeSliderButton();
        break;
      case WorkoutStatusEnum.requiersFinish:
        bloc.setFinishTypeSliderButton();
        break;
      case WorkoutStatusEnum.started:
        bloc.setFinishTypeSliderButton();
        break;
      case WorkoutStatusEnum.reg:
      case WorkoutStatusEnum.extending:
      case WorkoutStatusEnum.finished:
      case WorkoutStatusEnum.canceled:
      case WorkoutStatusEnum.missed:
      case WorkoutStatusEnum.forceFinish:
        bloc.setNoneTypeSliderButton();
        break;
    }

    return BlocBuilder<WorkoutSliderButtonTypeCubit,
        WorkoutSliderButtonTypeState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          start: () {
            if (!showBeforeCanStart &&
                workout.canStartTime.isAfter(DateTime.now())) {
              return const SizedBox();
            }
            if (workout.status == WorkoutStatusEnum.requiresStart) {
              return AppButtonSliderFactory.startWorkout(
                key: const Key('start-slider'),
                regAvailableTime: workout.canStartTime,
                enabled: false,
                warningText: 'Ждите подтверждения тренировки администратором',
                action: () async {
                  return null;
                },
              );
            }

            return AppButtonSliderFactory.startWorkout(
              key: const Key('start-slider'),
              regAvailableTime: workout.canStartTime,
              enabled: workout.canStartTime.isBefore(DateTime.now()),
              action: () async {
                await getIt<WorkoutCubit>().startWorkout(w: workout);
                bloc.setFinishTypeSliderButton();
                return true;
              },
            );
          },
          finish: () {
            if (workout.status == WorkoutStatusEnum.requiersFinish) {
              return AppButtonSliderFactory.finishWorkout(
                key: const Key('finish-slider'),
                enabled: false,
                inactiveText: 'Ждите подтверждения тренировки администратором',
                action: () async {
                  return null;
                },
              );
            }
            return AppButtonSliderFactory.finishWorkout(
              key: const Key('finish-slider'),
              action: () async {
                await getIt<WorkoutCubit>().finishWorkout(w: workout);
                return true;
              },
            );
          },
        );
      },
    );
  }
}
