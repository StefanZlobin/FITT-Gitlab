part of 'analytics_kpi_bloc.dart';

@freezed
class AnalyticsKPIState with _$AnalyticsKPIState {
  const factory AnalyticsKPIState.initial() = _AnalyticsKPIStateInitial;
  const factory AnalyticsKPIState.loaded({
    required KPI kpi,
  }) = _AnalyticsKPIStateLoaded;
  const factory AnalyticsKPIState.error({
    required String error,
  }) = _AnalyticsKPIStateError;
}
