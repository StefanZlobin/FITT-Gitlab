// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchAddress _$$_SearchAddressFromJson(Map<String, dynamic> json) => _$_SearchAddress(
      country: json['country'] as String,
      shortAddress: json['short_address'] as String,
      suggestionAddress: json['suggestion_address'] as String,
      region: json['region'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      house: json['house'] as String?,
      block: json['block'] as String?,
      postalCode: json['postal_code'] as String?,
      fiasLevel: json['fias_level'] as int?,
      latitude: (json['geo_lat'] as num).toDouble(),
      longitude: (json['geo_lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SearchAddressToJson(_$_SearchAddress instance) => <String, dynamic>{
      'country': instance.country,
      'short_address': instance.shortAddress,
      'suggestion_address': instance.suggestionAddress,
      'region': instance.region,
      'city': instance.city,
      'street': instance.street,
      'house': instance.house,
      'block': instance.block,
      'postal_code': instance.postalCode,
      'fias_level': instance.fiasLevel,
      'geo_lat': instance.latitude,
      'geo_lon': instance.longitude,
    };
