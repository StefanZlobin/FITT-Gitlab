part of 'workout_cubit.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = _WorkoutStateInitial;
  const factory WorkoutState.loaded({required Workout workout}) =
      _WorkoutStateLoaded;
  const factory WorkoutState.error({required String error}) =
      _WorkoutStateError;
}
