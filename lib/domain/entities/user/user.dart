// ignore_for_file: invalid_annotation_target

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/core/utils/string_utils.dart' as string_utils;
import 'package:fitt/domain/entities/user/anonymous_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@Freezed(toJson: true)
class User with _$User {
  factory User({
    @JsonKey(name: 'first_name') required String? firstName,
    @JsonKey(name: 'patronymic') required String? patronomicName,
    @JsonKey(name: 'last_name') required String? lastName,
    @JsonKey(name: 'birthday', toJson: dateToStringNullable, fromJson: dateFromStringNullable)
        required DateTime? birthday,
    @JsonKey(name: 'email') required String? email,
    @JsonKey(name: 'role') required UserRoleEnum? role,
    @JsonKey(name: 'gender') required UserGenderEnum? gender,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    @JsonKey(name: 'avatar') required String? avatar,
  }) = _User;
  User._();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  UserProfile get userProfileForAppMetrica {
    return UserProfile([
      NameAttribute.withValue('$firstName $lastName'),
      BirthDateAttribute.withAge(DateTime.now().year - birthday!.year),
      StringAttribute.withValue('email', email),
      StringAttribute.withValue('Номер телефона', phoneNumber),
      GenderAttribute.withValue(
        gender == UserGenderEnum.male
            ? Gender.MALE
            : gender == UserGenderEnum.female
                ? Gender.FEMALE
                : Gender.OTHER,
      ),
      StringAttribute.withValue(
        'Дата рождения',
        DateTimeUtils.dateFormatDetailed.format(birthday!).toString(),
      ),
      StringAttribute.withValue(
        'Роль пользователя',
        role == UserRoleEnum.administrator
            ? 'Администратор'
            : role == UserRoleEnum.customer
                ? 'Пользователь'
                : 'Аноним',
      ),
    ]);
  }

  bool get hasFullData =>
      string_utils.StringUtils.isNotEmpty(firstName) &&
      string_utils.StringUtils.isNotEmpty(lastName);

  String get userId =>
      (phoneNumber != null) ? phoneNumber!.substring(8, 12) : '';

  //TODO удалить после сделанного блока аунтетификации
  bool get isLoggedIn => this is! AnonymousUser;
}
