// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminUser _$$_AdminUserFromJson(Map<String, dynamic> json) => _$_AdminUser(
      fullname: json['fullname'] as String?,
      age: json['age'] as int?,
      gender: $enumDecodeNullable(_$UserGenderEnumEnumMap, json['gender']),
      userId: json['check_num'] as String?,
    );

Map<String, dynamic> _$$_AdminUserToJson(_$_AdminUser instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'age': instance.age,
      'gender': _$UserGenderEnumEnumMap[instance.gender],
      'check_num': instance.userId,
    };

const _$UserGenderEnumEnumMap = {
  UserGenderEnum.male: 'MALE',
  UserGenderEnum.female: 'FEMALE',
  UserGenderEnum.other: 'OTHER',
};
