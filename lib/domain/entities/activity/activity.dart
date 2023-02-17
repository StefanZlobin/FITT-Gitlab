// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/enum/activity_type_enum.dart';
import 'package:fitt/domain/entities/date_slot/date_slot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
class Activity with _$Activity {
  factory Activity({
    @JsonKey(name: 'id') required String uuid,
    required ActivityTypeEnum type,
    required String description,
    @JsonKey(name: 'date_slots') required List<DateSlot> dateSlots,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
