part of 'workout_sorting_bloc.dart';

@freezed
class WorkoutSortingEvent with _$WorkoutSortingEvent {
  const factory WorkoutSortingEvent.sortingChanged({
    required WorkoutSortingEnum sortingItem,
  }) = _WorkoutSortingEventSortingChanged;

  const factory WorkoutSortingEvent.refreshState({
    required Map<WorkoutSortingEnum, bool> sortingItems,
  }) = _WorkoutSortingEventRefreshState;
}
