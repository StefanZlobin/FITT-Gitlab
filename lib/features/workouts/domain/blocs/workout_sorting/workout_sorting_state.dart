part of 'workout_sorting_bloc.dart';

@freezed
class WorkoutSortingState with _$WorkoutSortingState {
  const factory WorkoutSortingState.initial() = _WorkoutSortingStateInitial;
  const factory WorkoutSortingState.loaded({
    required Map<WorkoutSortingEnum, bool> sortingItems,
  }) = _WorkoutSortingStateLoaded;
  const factory WorkoutSortingState.error({
    required String error,
  }) = _WorkoutSortingStateError;
}
