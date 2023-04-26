// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contacts _$$_ContactsFromJson(Map<String, dynamic> json) => _$_Contacts(
      owner: json['owner_str'] as String,
      phoneNumbers: (json['phone_numbers'] as List<dynamic>)
          .map((e) => PhoneNumber.fromJson(e as Map<String, dynamic>))
          .toList(),
      emails: (json['emails'] as List<dynamic>)
          .map((e) => Email.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactsToJson(_$_Contacts instance) =>
    <String, dynamic>{
      'owner_str': instance.owner,
      'phone_numbers': instance.phoneNumbers,
      'emails': instance.emails,
    };
