part of 'workouts_archive_bloc.dart';

@freezed
class WorkoutsArchiveState with _$WorkoutsArchiveState {
  const factory WorkoutsArchiveState.initial() = _WorkoutsArchiveStateInitial;
  const factory WorkoutsArchiveState.loading({
    required List<Workout> prevWorkouts,
    required bool isFirstFetch,
  }) = _WorkoutsArchiveStateLoading;
  const factory WorkoutsArchiveState.loaded({
    required List<Workout> workouts,
  }) = _WorkoutsArchiveStateLoaded;
  const factory WorkoutsArchiveState.error({
    required String error,
  }) = _WorkoutsArchiveStateError;
}
