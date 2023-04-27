// ignore_for_file: invalid_annotation_target

import 'package:fitt/features/clubs/domain/entities/club/club_batch_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_batch.freezed.dart';
part 'user_batch.g.dart';

@freezed
class UserBatch with _$UserBatch {
  factory UserBatch({
    @JsonKey(name: 'id') required String uuid,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'club') required ClubBatchInfo club,
    @JsonKey(name: 'available_hours') required double availableHours,
    @JsonKey(name: 'total_hours') required int totalHours,
    @JsonKey(name: 'batch_duration') required String duration,
    @JsonKey(name: 'expire_at') required String expireAt,
    @JsonKey(name: 'can_cancelled') required bool canCancell,
  }) = _UserBatch;

  UserBatch._();

  factory UserBatch.fromJson(Map<String, dynamic> json) =>
      _$UserBatchFromJson(json);
}
