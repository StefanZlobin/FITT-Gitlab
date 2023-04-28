part of 'closest_workout_bloc.dart';

@freezed
class ClosestWorkoutEvent with _$ClosestWorkoutEvent {
  const factory ClosestWorkoutEvent.getClosestWorkout() =
      _ClosestWorkoutEventGetClosestWorkout;

  const factory ClosestWorkoutEvent.closestWorkoutDetected({
    Workout? workout,
  }) = _ClosestWorkoutEventClosestWorkoutDetected;
}
