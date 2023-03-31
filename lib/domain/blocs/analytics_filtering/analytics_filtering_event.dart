part of 'analytics_filtering_bloc.dart';

@freezed
class AnalyticsFilteringEvent with _$AnalyticsFilteringEvent {
  const factory AnalyticsFilteringEvent.timeSliceChanged({
    required TimeSliceEnum timeSlice,
  }) = _AnalyticsFilteringEventTimeSliceChanged;
  const factory AnalyticsFilteringEvent.selectedClubsChanged({
    required List<String> clubsUuid,
  }) = _AnalyticsFilteringEventSelectedClubsChanged;
}
