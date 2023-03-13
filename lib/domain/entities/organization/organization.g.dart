// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Organization _$$_OrganizationFromJson(Map<String, dynamic> json) => _$_Organization(
      label: json['label'] as String,
      inn: json['inn'] as String,
      contacts: (json['contacts'] as List<dynamic>).map((e) => Contacts.fromJson(e as Map<String, dynamic>)).toList(),
      corporateEmail: json['corporate_email'] as String,
      ogrn: json['ogrn'] as String,
      officalLabel: json['official_label'] as String,
    );

Map<String, dynamic> _$$_OrganizationToJson(_$_Organization instance) => <String, dynamic>{
      'label': instance.label,
      'inn': instance.inn,
      'contacts': instance.contacts,
      'corporate_email': instance.corporateEmail,
      'ogrn': instance.ogrn,
      'official_label': instance.officalLabel,
    };
