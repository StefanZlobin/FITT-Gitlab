// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminClub _$$_AdminClubFromJson(Map<String, dynamic> json) => _$_AdminClub(
      uuid: json['id'] as String?,
      permissionType: json['permission_type'] as String?,
      analyzeInfo:
          json['analyze_info'] == null ? null : AnalyzeInfo.fromJson(json['analyze_info'] as Map<String, dynamic>),
      created: dateTimeFromStringNullable(json['created'] as String?),
      modified: dateTimeFromStringNullable(json['modified'] as String?),
      timezone: json['timezone'] as String?,
      label: json['label'] as String,
      description: json['description'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
      dependencies: json['dependencies'] as String,
      status: json['status'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String,
      organization: json['organization'] as String,
      address: json['address'] as String?,
      facilities: (json['facilities'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_AdminClubToJson(_$_AdminClub instance) => <String, dynamic>{
      'id': instance.uuid,
      'permission_type': instance.permissionType,
      'analyze_info': instance.analyzeInfo,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'timezone': instance.timezone,
      'label': instance.label,
      'description': instance.description,
      'rating': instance.rating,
      'dependencies': instance.dependencies,
      'status': instance.status,
      'email': instance.email,
      'phone': instance.phone,
      'organization': instance.organization,
      'address': instance.address,
      'facilities': instance.facilities,
    };
