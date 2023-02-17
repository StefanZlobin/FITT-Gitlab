// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/enum/batch_mark_enum.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'batch.freezed.dart';
part 'batch.g.dart';

@freezed
class Batch with _$Batch {
  factory Batch({
    @JsonKey(name: 'id') required int uuid,
    @JsonKey(name: 'club_id') required String clubUuid,
    @JsonKey(name: 'expire_at') DateTime? expireAt,
    @JsonKey(name: 'hours') int? hours,
    @JsonKey(name: 'full_price', fromJson: toRubles, toJson: toCent)
        required int fullPrice,
    @JsonKey(name: 'fact_price', fromJson: toRubles, toJson: toCent)
        required int factPrice,
    @JsonKey(name: 'duration') String? duration,
    @JsonKey(name: 'sale') int? sale,
    @JsonKey(name: 'marks') List<BatchMark>? marks,
  }) = _Batch;

  Batch._();

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
}
