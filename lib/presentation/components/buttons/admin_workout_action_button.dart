import 'dart:async';

import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/functions/app_modal_bottom_sheet.dart';
import 'package:fitt/domain/cubits/admin_modal_bottom_sheet/admin_modal_bottom_sheet_cubit.dart';
import 'package:fitt/domain/cubits/admin_workout/admin_workout_cubit.dart';
import 'package:fitt/domain/cubits/admin_workout_action_button/admin_workout_action_button_cubit.dart';
import 'package:fitt/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/presentation/components/buttons/app_button_slider_factory.dart';
import 'package:fitt/presentation/components/modals/admin_workout_finish_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/modals/admin_workout_start_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminWorkoutActionButton extends StatelessWidget {
  const AdminWorkoutActionButton({
    super.key,
    required this.adminWorkout,
  });

  final AdminWorkout adminWorkout;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<AdminWorkoutActionButtonCubit>();

    switch (adminWorkout.status) {
      case WorkoutStatusEnum.requiresStart:
        bloc.setStartSlider();
        break;
      case WorkoutStatusEnum.requiersFinish:
        bloc.setFinishSlider();
        break;
      case WorkoutStatusEnum.started:
        if (adminWorkout.planEndTime
            .add(const Duration(minutes: 10))
            .isBefore(DateTime.now())) {
          bloc.setFinishSlider();
          break;
        }
        bloc.setNoneSlider();
        break;
      case WorkoutStatusEnum.reg:
      case WorkoutStatusEnum.extending:
      case WorkoutStatusEnum.finished:
      case WorkoutStatusEnum.canceled:
      case WorkoutStatusEnum.missed:
      case WorkoutStatusEnum.forceFinish:
      case WorkoutStatusEnum.planned:
        bloc.setNoneSlider();
        break;
      case null:
        bloc.setNoneSlider();
        break;
    }

    return BlocBuilder<AdminWorkoutActionButtonCubit,
        AdminWorkoutActionButtonState>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          start: () {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: AppButtonSliderFactory.startWorkout(
                key: const Key('start-slider'),
                regAvailableTime: adminWorkout.planStartTime,
                action: () async {
                  getIt<AdminModalBottomSheetCubit>().setInitial();
                  unawaited(
                    showAppModalBottomSheet(
                      context,
                      AdminWorkoutStartModalBottomSheet(
                        adminWorkoutUuid: adminWorkout.uuid!,
                      ),
                    ),
                  );
                  await getIt<AdminWorkoutCubit>().confirmStartUserWorkout(
                    adminWorkoutUuid: adminWorkout.uuid!,
                  );
                  return true;
                },
              ),
            );
          },
          finish: () {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: AppButtonSliderFactory.finishWorkout(
                key: const Key('finish-slider'),
                action: () async {
                  if (adminWorkout.canEndTime.isBefore(DateTime.now())) {
                    getIt<AdminModalBottomSheetCubit>().forceFinish();
                    unawaited(
                      showAppModalBottomSheet(
                        context,
                        AdminWorkoutFinishModalBottomSheet(
                          adminWorkoutUuid: adminWorkout.uuid!,
                        ),
                      ),
                    );
                    return false;
                  } else {
                    getIt<AdminModalBottomSheetCubit>().setInitial();
                    unawaited(
                      showAppModalBottomSheet(
                        context,
                        AdminWorkoutFinishModalBottomSheet(
                          adminWorkoutUuid: adminWorkout.uuid!,
                        ),
                      ),
                    );
                    await getIt<AdminWorkoutCubit>().confirmFinishUserWorkout(
                      adminWorkoutUuid: adminWorkout.uuid!,
                    );
                    return true;
                  }
                },
              ),
            );
          },
          done: () => const SizedBox(),
        );
      },
    );
  }
}
