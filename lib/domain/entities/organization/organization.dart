// ignore_for_file: invalid_annotation_target

import 'package:fitt/domain/entities/contacts/contacts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class Organization with _$Organization {
  factory Organization({
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'inn') required String inn,
    @JsonKey(name: 'contacts') required List<Contacts> contacts,
    @JsonKey(name: 'corporate_email') required String corporateEmail,
    @JsonKey(name: 'ogrn') required String ogrn,
    @JsonKey(name: 'official_label') required String officalLabel,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);
}
