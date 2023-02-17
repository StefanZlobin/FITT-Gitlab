part of 'archive_workouts_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ArchiveWorkoutsState with _$ArchiveWorkoutsState {
  const factory ArchiveWorkoutsState.initial() = _ArchiveWorkoutsStateInitial;
  const factory ArchiveWorkoutsState.loading({
    required List<Workout> oldArchiveWorkouts,
    required bool isFirstFetch,
  }) = _ArchiveWorkoutsStateLoading;
  const factory ArchiveWorkoutsState.loaded({
    required List<Workout> archiveWorkouts,
  }) = _ArchiveWorkoutsStateLoaded;
  const factory ArchiveWorkoutsState.error({required String error}) =
      _ArchiveWorkoutsStateError;
}
