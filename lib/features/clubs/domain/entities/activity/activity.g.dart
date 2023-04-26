// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Activity _$$_ActivityFromJson(Map<String, dynamic> json) => _$_Activity(
      uuid: json['id'] as String,
      type: $enumDecode(_$ActivityTypeEnumEnumMap, json['type']),
      description: json['description'] as String,
      dateSlots: (json['date_slots'] as List<dynamic>)
          .map((e) => DateSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ActivityToJson(_$_Activity instance) =>
    <String, dynamic>{
      'id': instance.uuid,
      'type': _$ActivityTypeEnumEnumMap[instance.type]!,
      'description': instance.description,
      'date_slots': instance.dateSlots,
    };

const _$ActivityTypeEnumEnumMap = {
  ActivityTypeEnum.gym: 'GYM',
};
