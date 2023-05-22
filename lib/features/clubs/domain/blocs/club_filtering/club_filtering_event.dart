part of 'club_filtering_bloc.dart';

@freezed
class ClubFilteringEvent with _$ClubFilteringEvent {
  const factory ClubFilteringEvent.priceChanged({
    required Price price,
  }) = _ClubFilteringEventPriceChanged;

  const factory ClubFilteringEvent.facilitiesChanged({
    required Facility facility,
  }) = _ClubFilteringEventFacilitiesChanged;

  const factory ClubFilteringEvent.filtersChanged({
    required ClubFilters filters,
  }) = _ClubFilteringEventFiltersChanged;

  const factory ClubFilteringEvent.clearFilter() =
      _ClubFilteringEventClearFilter;
}
