import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/functions/app_modal_bottom_sheet.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workout_slider_button_type/workout_slider_button_type_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/presentation/components/buttons/app_button_slider_factory.dart';
import 'package:fitt/presentation/components/modals/workout_finish_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/modals/workout_start_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

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

    return BlocListener<WorkoutCubit, WorkoutState>(
      bloc: getIt<WorkoutCubit>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: (workout) {
            if (workout.status == WorkoutStatusEnum.requiresStart) {
              bloc.setConfirmationTypeSliderButton();
            } else if (workout.status == WorkoutStatusEnum.requiersFinish) {
              bloc.setConfirmationTypeSliderButton();
            }
          },
          error: (error) {
            context.pop();
            bloc.setStartTypeSliderButton();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  error,
                  style: AppTypography.kH14.apply(
                    color: AppColors.kPrimaryBlue,
                  ),
                ),
              ),
            );
          },
        );
      },
      child: BlocBuilder<WorkoutSliderButtonTypeCubit,
          WorkoutSliderButtonTypeState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            confirmation: () {
              return Container(
                height: 56,
                decoration: ShapeDecoration(
                  shape: SuperellipseShape(
                    borderRadius: superellipseRadius(12),
                  ),
                  color: AppColors.kOxford10,
                ),
                child: Center(
                  child: Text(
                    'Ждите подтверждения',
                    style: AppTypography.kH14.apply(color: AppColors.kOxford60),
                  ),
                ),
              );
            },
            start: () {
              if (!showBeforeCanStart &&
                  workout.canStartTime.isAfter(DateTime.now())) {
                return const SizedBox();
              }
              return AppButtonSliderFactory.startWorkout(
                key: const Key('start-slider'),
                regAvailableTime: workout.canStartTime,
                enabled: workout.canStartTime.isBefore(DateTime.now()),
                action: () async {
                  unawaited(showAppModalBottomSheet(
                    context,
                    const WorkoutStartModalBottomSheet(),
                  ));
                  await getIt<WorkoutCubit>().startWorkout(w: workout);
                  return true;
                },
              );
            },
            finish: () {
              return AppButtonSliderFactory.finishWorkout(
                key: const Key('finish-slider'),
                action: () async {
                  unawaited(
                    showAppModalBottomSheet(
                      context,
                      WorkoutFinishModalBottomSheet(workout: workout),
                    ),
                  );
                  await getIt<WorkoutCubit>().finishWorkout(w: workout);
                  return true;
                },
              );
            },
          );
        },
      ),
    );
  }
}
