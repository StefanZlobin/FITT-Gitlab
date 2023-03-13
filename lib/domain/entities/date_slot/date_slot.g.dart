// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateSlot _$$_DateSlotFromJson(Map<String, dynamic> json) => _$_DateSlot(
      date: DateTime.parse(json['date'] as String),
      timeSlots: (json['time_slots'] as List<dynamic>?)
          ?.map((e) => TimeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DateSlotToJson(_$_DateSlot instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time_slots': instance.timeSlots,
    };
