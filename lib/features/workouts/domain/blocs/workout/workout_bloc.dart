import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/repositories/workout/workout_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_bloc.freezed.dart';
part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc() : super(const WorkoutState.initial()) {
    on<_WorkoutEventGetWorkout>(_onWorkoutGetWorkout);
    on<_WorkoutEventSetWorkout>(_onWorkoutEventSetWorkout);
    on<_WorkoutEventCancelWorkout>(_onWorkoutEventCancelWorkout);

    getIt<PushNotificationsService>()
        .changeWorkoutStatusNotification
        .listen((Map<String, String>? changeWorkoutNotification) {
      if (changeWorkoutNotification != null) {
        add(WorkoutEvent.getWorkout(
          workoutUuid: changeWorkoutNotification.keys.first,
        ));
      }
    });
  }

  Future<void> _onWorkoutGetWorkout(
    _WorkoutEventGetWorkout event,
    Emitter<WorkoutState> emit,
  ) async {
    try {
      final w = await getIt<WorkoutRepository>().getWorkout(event.workoutUuid);
      add(WorkoutEvent.setWorkout(workout: w));
    } on NetworkExceptions catch (e) {
      emit(WorkoutState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  void _onWorkoutEventSetWorkout(
    _WorkoutEventSetWorkout event,
    Emitter<WorkoutState> emit,
  ) {
    emit(WorkoutState.loaded(workout: event.workout));
  }

  void _onWorkoutEventCancelWorkout(
    _WorkoutEventCancelWorkout event,
    Emitter<WorkoutState> emit,
  ) {
    getIt<WorkoutRepository>().cancelWorkout(workout: event.workout);
  }
}
