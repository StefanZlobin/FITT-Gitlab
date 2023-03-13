// ignore_for_file: invalid_annotation_target

import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_shedule.freezed.dart';
part 'work_shedule.g.dart';

@freezed
class WorkSchedule with _$WorkSchedule {
  const WorkSchedule._();

  const factory WorkSchedule({
    @JsonKey(name: 'date', fromJson: dateFromString) DateTime? date,
    @JsonKey(name: 'start_time', fromJson: timeFromString) DateTime? startTime,
    @JsonKey(name: 'end_time', fromJson: timeFromString) DateTime? endTime,
    @JsonKey(name: 'is_special', defaultValue: false) required bool isSpecial,
  }) = _WorkSchedule;

  factory WorkSchedule.fromJson(Map<String, dynamic> json) => _$WorkScheduleFromJson(json);

  bool get isWeekend => startTime == null;
  DateTime? get startDateTime => startTime == null ? null : DateTimeUtils.fromDateAndTime(date!, startTime!);
  DateTime? get endDateTime => endTime == null ? null : DateTimeUtils.fromDateAndTime(date!, endTime!);
}
