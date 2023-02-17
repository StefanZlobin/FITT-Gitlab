part of 'admin_workout_cubit.dart';

@freezed
class AdminWorkoutState with _$AdminWorkoutState {
  const factory AdminWorkoutState.initial() = _AdminWorkoutStateInitial;
  const factory AdminWorkoutState.loaded({required AdminWorkout adminWorkout}) =
      _AdminWorkoutStateLoaded;
  const factory AdminWorkoutState.error({required String error}) =
      _AdminWorkoutStateError;
}
