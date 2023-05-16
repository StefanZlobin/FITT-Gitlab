// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserOrganization _$$_UserOrganizationFromJson(Map<String, dynamic> json) =>
    _$_UserOrganization(
      label: json['label'] as String,
      description: json['description'] as String,
      organizationInfo: json['organizationInfo'] as String,
    );

Map<String, dynamic> _$$_UserOrganizationToJson(_$_UserOrganization instance) =>
    <String, dynamic>{
      'label': instance.label,
      'description': instance.description,
      'organizationInfo': instance.organizationInfo,
    };
