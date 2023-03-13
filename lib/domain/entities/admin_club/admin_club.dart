// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/domain/entities/analyze_info/analyze_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_club.freezed.dart';
part 'admin_club.g.dart';

@freezed
class AdminClub with _$AdminClub {
  const factory AdminClub({
    @JsonKey(name: 'id') String? uuid,
    @JsonKey(name: 'permission_type') String? permissionType,
    @JsonKey(name: 'analyze_info') AnalyzeInfo? analyzeInfo,
    @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable) DateTime? created,
    @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable) DateTime? modified,
    @JsonKey(name: 'timezone') String? timezone,
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'dependencies') required String dependencies,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'organization') required String organization,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'facilities') List<int>? facilities,
  }) = _AdminClub;

  factory AdminClub.fromJson(Map<String, dynamic> json) => _$AdminClubFromJson(json);
}
