part of 'analytics_bloc.dart';

@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  const factory AnalyticsEvent.started({
    required AnalyticsFilters analyticsFilters,
  }) = _AnalyticsEventStarted;

  const factory AnalyticsEvent.kpiChanged({
    required KPI kpi,
  }) = _AnalyticsEventKPIChanged;
}
