// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubFilters _$$_ClubFiltersFromJson(Map<String, dynamic> json) => _$_ClubFilters(
      facilities:
          (json['facility_ids'] as List<dynamic>?)?.map((e) => Facility.fromJson(e as Map<String, dynamic>)).toList(),
      minPrice: json['price_gte'] as int?,
      maxPrice: json['price_lte'] as int?,
      onlyWithBatch: json['only_with_batch'] as bool?,
      onlyWithSlots: json['only_with_slots'] as bool?,
      favorite: json['only_favorite'] as bool?,
    );

Map<String, dynamic> _$$_ClubFiltersToJson(_$_ClubFilters instance) => <String, dynamic>{
      'facility_ids': instance.facilities,
      'price_gte': instance.minPrice,
      'price_lte': instance.maxPrice,
      'only_with_batch': instance.onlyWithBatch,
      'only_with_slots': instance.onlyWithSlots,
      'only_favorite': instance.favorite,
    };
