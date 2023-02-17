part of 'admin_workouts_cubit.dart';

@freezed
class AdminWorkoutsState with _$AdminWorkoutsState {
  const factory AdminWorkoutsState.initial() = _AdminWorkoutsStateInitial;
  const factory AdminWorkoutsState.loaded(
      {required List<AdminWorkout> adminWorkouts}) = _AdminWorkoutsStateLoaded;
  const factory AdminWorkoutsState.error({required String error}) =
      _AdminWorkoutsStateError;
}
