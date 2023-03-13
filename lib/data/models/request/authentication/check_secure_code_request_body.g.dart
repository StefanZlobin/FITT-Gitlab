// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_secure_code_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckSecureCodeRequestBody _$CheckSecureCodeRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CheckSecureCodeRequestBody(
      json['phone_number'] as String,
      json['code'] as String,
      json['firebase_token'] as String,
    );

Map<String, dynamic> _$CheckSecureCodeRequestBodyToJson(
        CheckSecureCodeRequestBody instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'code': instance.secureCode,
      'firebase_token': instance.fcmToken,
    };
