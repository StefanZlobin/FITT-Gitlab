// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_organization.freezed.dart';
part 'user_organization.g.dart';

@Freezed(toJson: true)
class UserOrganization with _$UserOrganization {
  factory UserOrganization({
    // Наименование организации, в которой юзер состоит
    @JsonKey(name: 'label') required String label,
    // Описание организации
    @JsonKey(name: 'description') required String description,
    required String organizationInfo,
  }) = _UserOrganization;

  UserOrganization._();

  factory UserOrganization.fromJson(Map<String, dynamic> json) =>
      _$UserOrganizationFromJson(json);
}
