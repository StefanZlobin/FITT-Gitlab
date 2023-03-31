// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kpi.freezed.dart';
part 'kpi.g.dart';

@freezed
class KPI with _$KPI {
  const factory KPI({
    /// KPI количества посетилей за какой-либо период
    @JsonKey(name: 'customers_count') @Default(0) int visitorsCount,

    /// KPI выручки за какой-либо период
    @JsonKey(name: 'revenue') @Default(0) double revenue,

    /// KPI длительности часов за какой-либо период
    @JsonKey(name: 'hours') @Default(0) double durationOfHours,

    /// KPI средней стоимости часа за какой-либо период
    @JsonKey(name: 'avg_cost') @Default(0) double averageCostPerHour,

    /// KPI динамика посетилей (измеряется в %) за какой-либо период
    @JsonKey(name: 'customers_count_dynamic_prev_period')
    @Default(0)
        double dynamicsOfVisitors,

    /// KPI динамика выручки (измеряется в %) за какой-либо период
    @JsonKey(name: 'revenue_dynamic_prev_period')
    @Default(0)
        double revenueDynamics,
  }) = _KPI;

  factory KPI.fromJson(Map<String, dynamic> json) => _$KPIFromJson(json);
}
