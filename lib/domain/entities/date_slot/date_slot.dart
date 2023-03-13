// ignore_for_file: invalid_annotation_target

import 'package:fitt/domain/entities/time_slot/time_slot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_slot.freezed.dart';
part 'date_slot.g.dart';

@freezed
class DateSlot with _$DateSlot {
  factory DateSlot({
    required DateTime date,
    @JsonKey(name: 'time_slots') required List<TimeSlot>? timeSlots,
  }) = _DateSlot;

  factory DateSlot.fromJson(Map<String, dynamic> json) => _$DateSlotFromJson(json);
}
