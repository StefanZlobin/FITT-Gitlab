part of 'club_sorting_bloc.dart';

@Freezed(equal: false)
class ClubSortingState with _$ClubSortingState {
  const factory ClubSortingState.initial() = _ClubSortingStateInitial;
  const factory ClubSortingState.loaded({
    required Map<ClubSortingEnum, bool> sortingItems,
  }) = _ClubSortingStateLoaded;
  const factory ClubSortingState.error() = _ClubSortingStateError;
}
