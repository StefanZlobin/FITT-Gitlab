// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_shedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkSchedule _$$_WorkScheduleFromJson(Map<String, dynamic> json) =>
    _$_WorkSchedule(
      date: dateFromString(json['date'] as String),
      startTime: timeFromStringNullable(json['start_time'] as String?),
      endTime: timeFromStringNullable(json['end_time'] as String?),
      isSpecial: json['is_special'] as bool? ?? false,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$_WorkScheduleToJson(_$_WorkSchedule instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'is_special': instance.isSpecial,
      'label': instance.label,
    };
