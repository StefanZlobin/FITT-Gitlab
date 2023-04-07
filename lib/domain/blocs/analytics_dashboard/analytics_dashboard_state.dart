part of 'analytics_dashboard_bloc.dart';

@freezed
class AnalyticsDashboardState with _$AnalyticsDashboardState {
  const factory AnalyticsDashboardState.initial() =
      _AnalyticsDashboardStateInitial;
  const factory AnalyticsDashboardState.loaded({
    required WorkoutsChartData chartData,
  }) = _AnalyticsDashboardStateLoaded;
  const factory AnalyticsDashboardState.error({
    required String error,
  }) = _AnalyticsDashboardStateError;
}
