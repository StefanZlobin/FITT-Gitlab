// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      firstName: json['first_name'] as String?,
      patronomicName: json['patronymic'] as String?,
      lastName: json['last_name'] as String?,
      birthday: dateFromStringNullable(json['birthday'] as String?),
      email: json['email'] as String?,
      role: (json['role'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$UserRoleEnumEnumMap, e))
          .toList(),
      gender: $enumDecodeNullable(_$UserGenderEnumEnumMap, json['gender']),
      phoneNumber: json['phone_number'] as String?,
      avatar: json['avatar'] as String?,
      wallet: json['corporate_wallet'] == null
          ? null
          : Wallet.fromJson(json['corporate_wallet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'patronymic': instance.patronomicName,
      'last_name': instance.lastName,
      'birthday': dateToStringNullable(instance.birthday),
      'email': instance.email,
      'role': instance.role?.map((e) => _$UserRoleEnumEnumMap[e]!).toList(),
      'gender': _$UserGenderEnumEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'corporate_wallet': instance.wallet,
    };

const _$UserRoleEnumEnumMap = {
  UserRoleEnum.customer: 'CUSTOMER',
  UserRoleEnum.administrator: 'ADMIN',
  UserRoleEnum.manager: 'MANAGER',
  UserRoleEnum.anonymous: 'anonymous',
};

const _$UserGenderEnumEnumMap = {
  UserGenderEnum.male: 'MALE',
  UserGenderEnum.female: 'FEMALE',
  UserGenderEnum.other: 'OTHER',
};
