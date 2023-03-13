// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_map_points_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMapPointsRequestBody _$GetMapPointsRequestBodyFromJson(Map<String, dynamic> json) => GetMapPointsRequestBody(
      poligon: json['in_area'] as String,
      facilities: (json['facility_ids'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [],
      maxPrice: json['price_lte'] as int?,
      minPrice: json['price_gte'] as int?,
    );

Map<String, dynamic> _$GetMapPointsRequestBodyToJson(GetMapPointsRequestBody instance) => <String, dynamic>{
      'in_area': instance.poligon,
      'facility_ids': instance.facilities,
      'price_gte': toCentNullable(instance.minPrice),
      'price_lte': toCentNullable(instance.maxPrice),
    };
