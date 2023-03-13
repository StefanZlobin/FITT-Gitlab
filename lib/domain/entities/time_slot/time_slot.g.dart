// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSlot _$$_TimeSlotFromJson(Map<String, dynamic> json) => _$_TimeSlot(
      id: json['id'] as String,
      startTime: timeFromString(json['start_time'] as String),
      duration: const DurationConverter().fromJson(json['duration'] as int),
      price: toRubles(json['price'] as int),
    );

Map<String, dynamic> _$$_TimeSlotToJson(_$_TimeSlot instance) => <String, dynamic>{
      'id': instance.id,
      'start_time': timeToString(instance.startTime),
      'duration': const DurationConverter().toJson(instance.duration),
      'price': toCent(instance.price),
    };
