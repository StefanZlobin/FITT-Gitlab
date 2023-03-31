// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kpi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KPI _$$_KPIFromJson(Map<String, dynamic> json) => _$_KPI(
      visitorsCount: json['visitors_count'] as int? ?? 0,
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0,
      durationOfHours: (json['duration_of_hours'] as num?)?.toDouble() ?? 0,
      averageCostPerHour:
          (json['average_cost_per_hour'] as num?)?.toDouble() ?? 0,
      dynamicsOfVisitors:
          (json['dynamics_of_visitors'] as num?)?.toDouble() ?? 0,
      revenueDynamics: (json['revenue_dynamics'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_KPIToJson(_$_KPI instance) => <String, dynamic>{
      'visitors_count': instance.visitorsCount,
      'revenue': instance.revenue,
      'duration_of_hours': instance.durationOfHours,
      'average_cost_per_hour': instance.averageCostPerHour,
      'dynamics_of_visitors': instance.dynamicsOfVisitors,
      'revenue_dynamics': instance.revenueDynamics,
    };
