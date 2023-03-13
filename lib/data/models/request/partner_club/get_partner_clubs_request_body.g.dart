// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_clubs_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPartnerClubsRequestBody _$GetPartnerClubsRequestBodyFromJson(Map<String, dynamic> json) =>
    GetPartnerClubsRequestBody(
      limit: json['limit'] as int? ?? -1,
      offset: json['offset'] as int? ?? 0,
      facilities: (json['facility_ids'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [],
      maxPrice: json['price_lte'] as int?,
      minPrice: json['price_gte'] as int?,
      isFavorite: json['only_favorite'] as bool? ?? false,
      poligon: json['in_area'] as String,
      sorting: json['ordering'] as String,
    );

Map<String, dynamic> _$GetPartnerClubsRequestBodyToJson(GetPartnerClubsRequestBody instance) => <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'facility_ids': instance.facilities,
      'price_gte': toCentNullable(instance.minPrice),
      'price_lte': toCentNullable(instance.maxPrice),
      'ordering': instance.sorting,
      'in_area': instance.poligon,
      'only_favorite': instance.isFavorite,
    };
