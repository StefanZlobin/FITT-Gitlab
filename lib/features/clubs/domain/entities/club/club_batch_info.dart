// ignore_for_file: invalid_annotation_target

import 'package:fitt/features/clubs/domain/entities/address/address.dart';
import 'package:fitt/features/clubs/domain/entities/photo/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_batch_info.freezed.dart';
part 'club_batch_info.g.dart';

@freezed
class ClubBatchInfo with _$ClubBatchInfo {
  ClubBatchInfo._();

  factory ClubBatchInfo({
    @JsonKey(name: 'id') required String clubUuid,
    @JsonKey(name: 'label') required String clubLabel,
    @JsonKey(name: 'address') required Address address,
    @JsonKey(name: 'photos') required List<Photo> photos,
  }) = _ClubBatchInfo;

  factory ClubBatchInfo.fromJson(Map<String, dynamic> json) =>
      _$ClubBatchInfoFromJson(json);
}
