part of 'workouts_bloc.dart';

@freezed
class WorkoutsState with _$WorkoutsState {
  const factory WorkoutsState.initial() = _WorkoutsStateInitial;
  const factory WorkoutsState.loaded({
    required List<Workout> workouts,
  }) = _WorkoutsStateLoaded;
  const factory WorkoutsState.error({
    required String error,
  }) = _WorkoutsStateError;
}
