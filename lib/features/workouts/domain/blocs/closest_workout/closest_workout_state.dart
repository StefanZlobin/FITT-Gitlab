part of 'closest_workout_bloc.dart';

@freezed
class ClosestWorkoutState with _$ClosestWorkoutState {
  const factory ClosestWorkoutState.initial() = _ClosestWorkoutStateInitial;
  const factory ClosestWorkoutState.loaded({
    required Workout? workout,
  }) = _ClosestWorkoutStateLoaded;
  const factory ClosestWorkoutState.error({
    required String error,
  }) = _ClosestWorkoutStateError;
}
