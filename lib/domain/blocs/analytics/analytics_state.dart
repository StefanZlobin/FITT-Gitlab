part of 'analytics_bloc.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.initial() = _AnalyticsStateInitial;
  const factory AnalyticsState.loaded({
    required KPI kpi,
  }) = _AnalyticsStateLoaded;
  const factory AnalyticsState.error({
    required String error,
  }) = _AnalyticsStateError;
}
