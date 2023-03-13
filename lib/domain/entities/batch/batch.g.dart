// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Batch _$$_BatchFromJson(Map<String, dynamic> json) => _$_Batch(
      uuid: json['id'] as int,
      clubUuid: json['club_id'] as String,
      expireAt: json['expire_at'] == null ? null : DateTime.parse(json['expire_at'] as String),
      hours: json['hours'] as int?,
      fullPrice: toRubles(json['full_price'] as int),
      factPrice: toRubles(json['fact_price'] as int),
      duration: json['duration'] as String?,
      sale: json['sale'] as int?,
      marks: (json['marks'] as List<dynamic>?)?.map((e) => $enumDecode(_$BatchMarkEnumMap, e)).toList(),
    );

Map<String, dynamic> _$$_BatchToJson(_$_Batch instance) => <String, dynamic>{
      'id': instance.uuid,
      'club_id': instance.clubUuid,
      'expire_at': instance.expireAt?.toIso8601String(),
      'hours': instance.hours,
      'full_price': toCent(instance.fullPrice),
      'fact_price': toCent(instance.factPrice),
      'duration': instance.duration,
      'sale': instance.sale,
      'marks': instance.marks?.map((e) => _$BatchMarkEnumMap[e]!).toList(),
    };

const _$BatchMarkEnumMap = {
  BatchMark.hit: 'HIT',
};
