part of 'workouts_cubit.dart';

@freezed
class WorkoutsState with _$WorkoutsState {
  const factory WorkoutsState.initial() = _WorkoutsStateInitial;
  const factory WorkoutsState.loading() = _WorkoutsStateLoading;
  const factory WorkoutsState.loaded({
    required List<Workout> workouts,
    Workout? closestWorkout,
  }) = _WorkoutsStateLoaded;
  const factory WorkoutsState.error({required String error}) =
      _WorkoutsStateError;
}
