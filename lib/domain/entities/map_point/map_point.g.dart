// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapPoint _$$_MapPointFromJson(Map<String, dynamic> json) => _$_MapPoint(
      type: $enumDecode(_$MapPointsEnumEnumMap, json['type']),
      coordinates: LatLng.fromJson(json['coordinates'] as List<dynamic>),
      id: json['id'] as String,
      data: MapPointData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MapPointToJson(_$_MapPoint instance) =>
    <String, dynamic>{
      'type': _$MapPointsEnumEnumMap[instance.type]!,
      'coordinates': instance.coordinates,
      'id': instance.id,
      'data': instance.data,
    };

const _$MapPointsEnumEnumMap = {
  MapPointsEnum.partnerClubWithBatch: 'CLUB_WITH_BATCH',
  MapPointsEnum.partnerClub: 'CLUB',
  MapPointsEnum.none: 'none',
};
