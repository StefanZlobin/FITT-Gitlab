// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum UserRoleEnum {
  @JsonValue('CUSTOMER')
  customer,
  @JsonValue('ADMIN')
  administrator,
  @JsonValue('MANAGER')
  manager,
  anonymous;

  String getUserRoleName(UserRoleEnum v) {
    switch (v) {
      case UserRoleEnum.customer:
        return 'Пользователь';
      case UserRoleEnum.administrator:
        return 'Администратор';
      case UserRoleEnum.manager:
        return 'Управляющий';
      case UserRoleEnum.anonymous:
        return 'Неизвестно';
    }
  }
}

enum UserTypeEnum {
  @JsonValue('CUSTOMER')
  CUSTOMER,
  @JsonValue('ADMINISTRATOR')
  ADMINISTRATOR,
}