// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analyze_info.freezed.dart';
part 'analyze_info.g.dart';

@freezed
class AnalyzeInfo with _$AnalyzeInfo {
  const factory AnalyzeInfo({
    @JsonKey(name: 'success_visits') required int successVisits,
  }) = _AnalyzeInfo;

  factory AnalyzeInfo.fromJson(Map<String, dynamic> json) => _$AnalyzeInfoFromJson(json);
}
