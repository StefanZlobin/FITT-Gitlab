// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_batch_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubBatchInfo _$$_ClubBatchInfoFromJson(Map<String, dynamic> json) =>
    _$_ClubBatchInfo(
      clubUuid: json['id'] as String,
      clubLabel: json['label'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ClubBatchInfoToJson(_$_ClubBatchInfo instance) =>
    <String, dynamic>{
      'id': instance.clubUuid,
      'label': instance.clubLabel,
      'address': instance.address,
      'photos': instance.photos,
    };
