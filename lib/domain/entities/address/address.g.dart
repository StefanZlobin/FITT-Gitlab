// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      shortAddress: json['short_address'] as String,
      coordinates: LatLng.fromJson(json['coordinates'] as List<dynamic>),
      detailPath: json['detail_path'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) => <String, dynamic>{
      'short_address': instance.shortAddress,
      'coordinates': instance.coordinates,
      'detail_path': instance.detailPath,
    };
