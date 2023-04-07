part of 'analytics_filtering_bloc.dart';

@freezed
class AnalyticsFilteringState with _$AnalyticsFilteringState {
  const factory AnalyticsFilteringState.initial() =
      _AnalyticsFilteringStateInitial;
  const factory AnalyticsFilteringState.loaded({
    @Default(TimeSliceEnum.week) TimeSliceEnum timeSlice,
    Map<String, bool>? clubsUuid,
    required DateTime startDateRange,
    required DateTime endDateRange,
    required DateTime selectedDate,
  }) = _AnalyticsFilteringStateLoaded;
  const factory AnalyticsFilteringState.error({
    required String error,
  }) = _AnalyticsFilteringStateError;
}
