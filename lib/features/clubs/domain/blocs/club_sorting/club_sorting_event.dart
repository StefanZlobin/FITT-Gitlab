part of 'club_sorting_bloc.dart';

@Freezed(equal: false)
class ClubSortingEvent with _$ClubSortingEvent {
  const factory ClubSortingEvent.sortingChanged({
    required ClubSortingEnum clubSortingEnum,
  }) = _ClubSortingEventSortingChanged;

  const factory ClubSortingEvent.refreshState({
    required Map<ClubSortingEnum, bool> clubSortingItems,
  }) = _ClubSortingEventRefreshState;
}
