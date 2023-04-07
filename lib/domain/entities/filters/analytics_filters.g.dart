// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnalyticsFilters _$$_AnalyticsFiltersFromJson(Map<String, dynamic> json) =>
    _$_AnalyticsFilters(
      clubsUuid: (json['club_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      timeSlice: $enumDecodeNullable(_$TimeSliceEnumEnumMap, json['slice']) ??
          TimeSliceEnum.week,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$$_AnalyticsFiltersToJson(_$_AnalyticsFilters instance) =>
    <String, dynamic>{
      'club_ids': instance.clubsUuid,
      'slice': _$TimeSliceEnumEnumMap[instance.timeSlice]!,
      'start_date': timeToFormattedString(instance.startDate),
      'end_date': timeToFormattedString(instance.endDate),
    };

const _$TimeSliceEnumEnumMap = {
  TimeSliceEnum.week: 'week',
  TimeSliceEnum.day: 'day',
  TimeSliceEnum.month: 'month',
  TimeSliceEnum.year: 'year',
};
