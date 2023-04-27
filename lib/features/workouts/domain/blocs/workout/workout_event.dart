part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.getWorkout({
    required String workoutUuid,
  }) = _WorkoutEventGetWorkout;

  const factory WorkoutEvent.setWorkout({
    required Workout workout,
  }) = _WorkoutEventSetWorkout;

  const factory WorkoutEvent.cancelWorkout({
    required Workout workout,
  }) = _WorkoutEventCancelWorkout;

  const factory WorkoutEvent.startWorkout({
    required Workout workout,
  }) = _WorkoutEventStartWorkout;

  const factory WorkoutEvent.finishWorkout({
    required Workout workout,
  }) = _WorkoutEventFinishWorkout;
}
