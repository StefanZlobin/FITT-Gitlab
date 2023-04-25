part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.getWorkout({
    required String workoutUuid,
  }) = _WorkoutEventGetWorkout;

  const factory WorkoutEvent.setWorkout({
    required Workout workout,
  }) = _WorkoutEventSetWorkout;
}
