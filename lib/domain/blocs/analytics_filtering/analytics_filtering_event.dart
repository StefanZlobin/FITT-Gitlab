part of 'analytics_filtering_bloc.dart';

@freezed
class AnalyticsFilteringEvent with _$AnalyticsFilteringEvent {
  const factory AnalyticsFilteringEvent.timeSliceChanged({
    required TimeSliceEnum timeSlice,
  }) = _AnalyticsFilteringEventTimeSliceChanged;
  const factory AnalyticsFilteringEvent.selectedClubsChanged({
    required String clubUuidSelected,
  }) = _AnalyticsFilteringEventSelectedClubsChanged;
  const factory AnalyticsFilteringEvent.dateRangeChanged({
    required TimeSliceEnum timeSlice,
    required DateTime selectedDate,
  }) = _AnalyticsFilteringEventDateRangeChanged;
}
