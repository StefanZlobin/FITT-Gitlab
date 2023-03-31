// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KPI _$$_KPIFromJson(Map<String, dynamic> json) => _$_KPI(
      visitorsCount: json['customers_count'] as int? ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0,
      durationOfHours: (json['hours'] as num?)?.toDouble() ?? 0,
      averageCostPerHour: (json['avg_cost'] as num?)?.toDouble() ?? 0,
      dynamicsOfVisitors:
          (json['customers_count_dynamic_prev_period'] as num?)?.toDouble() ??
              0,
      revenueDynamics:
          (json['revenue_dynamic_prev_period'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_KPIToJson(_$_KPI instance) => <String, dynamic>{
      'customers_count': instance.visitorsCount,
      'revenue': instance.revenue,
      'hours': instance.durationOfHours,
      'avg_cost': instance.averageCostPerHour,
      'customers_count_dynamic_prev_period': instance.dynamicsOfVisitors,
      'revenue_dynamic_prev_period': instance.revenueDynamics,
    };
