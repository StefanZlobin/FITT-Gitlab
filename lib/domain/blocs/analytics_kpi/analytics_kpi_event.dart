part of 'analytics_kpi_bloc.dart';

@freezed
class AnalyticsKPIEvent with _$AnalyticsKPIEvent {
  const factory AnalyticsKPIEvent.started({
    required AnalyticsFilters analyticsFilters,
  }) = _AnalyticsKPIEventStarted;

  const factory AnalyticsKPIEvent.kpiChanged({
    required KPI kpi,
  }) = _AnalyticsKPIEventChanged;
}
