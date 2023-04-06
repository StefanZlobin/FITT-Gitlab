part of 'analytics_dashboard_bloc.dart';

@freezed
class AnalyticsDashboardEvent with _$AnalyticsDashboardEvent {
  const factory AnalyticsDashboardEvent.workoutsChartDataChanged({
    required WorkoutsChartData workoutsChartData,
  }) = _AnalyticsDashboardEventWorkoutsChartDataChanged;
}
