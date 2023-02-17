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

  factory WorkSchedule.fromJson(Map<String, dynamic> json) =>
      _$WorkScheduleFromJson(json);

  bool get isWeekend => startTime == null;
  DateTime? get startDateTime => startTime == null
      ? null
      : DateTimeUtils.fromDateAndTime(date!, startTime!);
  DateTime? get endDateTime =>
      endTime == null ? null : DateTimeUtils.fromDateAndTime(date!, endTime!);
}

//class WorkScheduleConverter implements JsonConverter<WorkSchedule, Map> {
//  const WorkScheduleConverter();

//  @override
//  WorkSchedule fromJson(Map json) {
//    final date = dateFromString(json['date'] as String);
//    // необработанные данные о дате начала
//    final startTimeRow = json['start_time'] as String?;
//    // необработанные данные о дате конца
//    final endTimeRow = json['end_time'] as String?;
//    final startTime = timeFromString(startTimeRow ?? '00:00:00');
//    final endTime = timeFromString(endTimeRow ?? '10:00:00');
//    final isSpecial = json['is_special'] as bool? ?? false;
//    final isWeekend = startTimeRow == null && endTimeRow == null;

//    return WorkSchedule(
//      startTime: DateTimeUtils.fromDateAndTime(date, startTime),
//      endTime: DateTimeUtils.fromDateAndTime(date, endTime),
//      isSpecial: isSpecial,
//      isWeekend: isWeekend,
//    );
//  }

//  @override
//  Map<String, Object?> toJson(WorkSchedule object) {
//    final json = {
//      'date': dateToString(object.startTime ?? DateTime.now()),
//      'start_time': timeToString(object.startTime ?? DateTime.now()),
//      'end_time': timeToString(object.endTime ?? DateTime.now()),
//      'is_special': object.isSpecial,
//    };
//    return json;
//  }
//}
