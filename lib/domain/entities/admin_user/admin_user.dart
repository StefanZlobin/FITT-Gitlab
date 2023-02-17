// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_user.freezed.dart';
part 'admin_user.g.dart';

@freezed
class AdminUser with _$AdminUser {
  const factory AdminUser({
    @JsonKey(name: 'fullname') String? fullname,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'gender') UserGenderEnum? gender,
    @JsonKey(name: 'check_num') String? userId,
  }) = _AdminUser;

  factory AdminUser.fromJson(Map<String, dynamic> json) =>
      _$AdminUserFromJson(json);
}
