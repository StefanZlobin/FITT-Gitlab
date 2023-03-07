import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/functions/app_modal_bottom_sheet.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/cubits/workout_slider_button_type/workout_slider_button_type_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/presentation/components/buttons/app_button_slider_factory.dart';
import 'package:fitt/presentation/components/modals/workout_finish_modal_bottom_sheet.dart';
import 'package:fitt/presentation/components/modals/workout_start_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class WorkoutActionButton extends StatelessWidget with UserMixin {
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
        bloc.setStartTypeSliderButton(showBeforeCanStart: showBeforeCanStart);
        break;
      case WorkoutStatusEnum.requiresStart:
        bloc.setConfirmationTypeSliderButton();
        break;
      case WorkoutStatusEnum.requiersFinish:
        bloc.setConfirmationTypeSliderButton();
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
            if (workout.status == WorkoutStatusEnum.planned &&
                workout.canStartTime ==
                    DateTime(
                      DateTime.now().year,
                      DateTime.now().month,
                      DateTime.now().day,
                      DateTime.now().hour,
                      DateTime.now().minute,
                      DateTime.now().second,
                    )) {
              bloc.setNoneTypeSliderButton();
              bloc.setStartTypeSliderButton(showBeforeCanStart: true);
            } else if (workout.status == WorkoutStatusEnum.requiresStart) {
              bloc.setConfirmationTypeSliderButton();
            } else if (workout.status == WorkoutStatusEnum.requiersFinish) {
              bloc.setConfirmationTypeSliderButton();
            }
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
                margin: const EdgeInsets.only(top: 8),
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
            start: (canShowBeforeStart) {
              if (!canShowBeforeStart &&
                  workout.canStartTime.isAfter(DateTime.now())) {
                return const SizedBox();
              }
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: AppButtonSliderFactory.startWorkout(
                  key: const Key('start-slider'),
                  regAvailableTime: workout.canStartTime,
                  enabled: workout.canStartTime.isBefore(DateTime.now()),
                  action: () async {
                    if (userSnapshot == null) {
                      context.pushNamed(
                        AppRoute.personalData.routeToPath,
                        extra: false,
                      );
                    } else if (!userSnapshot!.hasFullData) {
                      context.pushNamed(
                        AppRoute.personalData.routeToPath,
                        extra: false,
                      );
                    }
                    unawaited(showAppModalBottomSheet(
                      context,
                      const WorkoutStartModalBottomSheet(),
                    ));
                    await getIt<WorkoutCubit>().startWorkout(w: workout);
                    await getIt<LocalNotificationsService>()
                        .scheduleLocalNotification(
                      id: workout.workoutHashCode - 3,
                      title: 'До конца тренировки осталось 10 минут',
                      body:
                          'За это время можно горы свернуть! Или сделать заминку',
                      scheduleDuration:
                          workout.endTime.difference(DateTime.now()),
                    );
                    await getIt<LocalNotificationsService>()
                        .scheduleLocalNotification(
                      id: workout.workoutHashCode - 4,
                      title: 'Твоя тренировка — 10/10!',
                      body:
                          'Пора собираться, не забудь подойти к администратору и завершить тренировку',
                      scheduleDuration:
                          workout.canEndTime.difference(DateTime.now()),
                    );
                    await getIt<LocalNotificationsService>()
                        .scheduleLocalNotification(
                      id: workout.workoutHashCode - 5,
                      title: 'Ты не завершил тренировку!',
                      body:
                          'Срочно подойди к администратору и подтверди завершение тренировки',
                      scheduleDuration: workout.canEndTime
                          .add(const Duration(minutes: 10))
                          .difference(DateTime.now()),
                    );
                    return true;
                  },
                ),
              );
            },
            finish: () {
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: AppButtonSliderFactory.finishWorkout(
                  key: const Key('finish-slider'),
                  action: () async {
                    unawaited(
                      showAppModalBottomSheet(
                        context,
                        WorkoutFinishModalBottomSheet(workout: workout),
                      ),
                    );
                    await getIt<WorkoutCubit>().finishWorkout(w: workout);
                    await getIt<LocalNotificationsService>()
                        .deleteLocalNotification(
                            id: workout.workoutHashCode - 3);
                    await getIt<LocalNotificationsService>()
                        .deleteLocalNotification(
                            id: workout.workoutHashCode - 4);
                    await getIt<LocalNotificationsService>()
                        .deleteLocalNotification(
                            id: workout.workoutHashCode - 5);
                    return true;
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
