// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_short_info.freezed.dart';
part 'organization_short_info.g.dart';

@freezed
class OrganizationShortInfo with _$OrganizationShortInfo {
  factory OrganizationShortInfo({
    @JsonKey(name: 'id') required String uuid,
    @JsonKey(name: 'label') required String label,
  }) = _OrganizationShortInfo;

  factory OrganizationShortInfo.fromJson(Map<String, dynamic> json) =>
      _$OrganizationShortInfoFromJson(json);
}
