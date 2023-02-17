// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartnerClub _$$_PartnerClubFromJson(Map<String, dynamic> json) =>
    _$_PartnerClub(
      uuid: json['id'] as String?,
      minPrice: toRublesNullable(json['min_price'] as int?),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      distance: json['distance'] as String?,
      label: json['label'] as String?,
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      facilities: (json['facilities'] as List<dynamic>?)
          ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
          .toList(),
      batchHoursAvailable: (json['batch_hours_available'] as num?)?.toDouble(),
      isFavorite: json['is_favorite'] as bool?,
      workSchedule: (json['work_schedule'] as List<dynamic>?)
          ?.map((e) => WorkSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
      timezone: json['timezone'] as String?,
      description: json['description'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone'] as String?,
    );

Map<String, dynamic> _$$_PartnerClubToJson(_$_PartnerClub instance) =>
    <String, dynamic>{
      'id': instance.uuid,
      'min_price': instance.minPrice,
      'address': instance.address,
      'distance': instance.distance,
      'label': instance.label,
      'rating': instance.rating,
      'photos': instance.photos,
      'facilities': instance.facilities,
      'batch_hours_available': instance.batchHoursAvailable,
      'is_favorite': instance.isFavorite,
      'work_schedule': instance.workSchedule,
      'activities': instance.activities,
      'organization': instance.organization,
      'documents': instance.documents,
      'timezone': instance.timezone,
      'description': instance.description,
      'email': instance.email,
      'phone': instance.phoneNumber,
    };
