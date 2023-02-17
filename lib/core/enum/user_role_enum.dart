// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum UserRoleEnum {
  // TODO sync values
  @JsonValue('CUSTOMER')
  customer,
  @JsonValue('ADMIN')
  administrator,
  anonymous,
}

enum UserTypeEnum {
  @JsonValue('CUSTOMER')
  CUSTOMER,
  @JsonValue('ADMINISTRATOR')
  ADMINISTRATOR,
}
