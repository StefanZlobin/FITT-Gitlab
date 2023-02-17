part of 'sorting_cubit.dart';

@freezed
class SortingState with _$SortingState {
  const factory SortingState.initial() = _SortingStateInitial;
  const factory SortingState.clubSorting({
    required ClubSortingEnum clubSortingEnum,
  }) = _SortingStateClubSorting;
  const factory SortingState.workoutSorting({
    required WorkoutSortingEnum workoutSortingEnum,
  }) = _SortingStateWorkoutSorting;
}
