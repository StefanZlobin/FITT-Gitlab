// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

@freezed
class TimeSlot with _$TimeSlot {
  factory TimeSlot({
    required String id,
    @JsonKey(
      name: 'start_time',
      fromJson: timeFromString,
      toJson: timeToString,
    )
        required DateTime startTime,
    @DurationConverter()
        required Duration duration,
    @JsonKey(
      fromJson: toRubles,
      toJson: toCent,
    )
        required int price,
  }) = _TimeSlot;

  TimeSlot._();

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);

  @JsonKey(ignore: true)
  DateTime get endTime => startTime.add(duration);
}
