// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StaffFilters _$$_StaffFiltersFromJson(Map<String, dynamic> json) =>
    _$_StaffFilters(
      clubUuids: (json['club_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      startDateForKPIShow: json['start_date_for_kpi_show'] == null
          ? null
          : DateTime.parse(json['start_date_for_kpi_show'] as String),
      endDateForKPIShow: json['end_date_for_kpi_show'] == null
          ? null
          : DateTime.parse(json['end_date_for_kpi_show'] as String),
    );

Map<String, dynamic> _$$_StaffFiltersToJson(_$_StaffFilters instance) =>
    <String, dynamic>{
      'club_ids': instance.clubUuids,
      'start_date_for_kpi_show':
          instance.startDateForKPIShow?.toIso8601String(),
      'end_date_for_kpi_show': instance.endDateForKPIShow?.toIso8601String(),
    };
