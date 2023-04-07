// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

enum TimeSliceEnum {
  @JsonEnum(valueField: 'WEEK')
  week,
  @JsonEnum(valueField: 'DAY')
  day,
  @JsonEnum(valueField: 'MONTH')
  month,
  @JsonEnum(valueField: 'YEAR')
  year;

  String timeSliceToField(TimeSliceEnum v) {
    switch (v) {
      case TimeSliceEnum.day:
        return 'DAY';
      case TimeSliceEnum.week:
        return 'WEEK';
      case TimeSliceEnum.month:
        return 'MONTH';
      case TimeSliceEnum.year:
        return 'YEAR';
    }
  }

  String timeSliceToString(TimeSliceEnum v) {
    switch (v) {
      case TimeSliceEnum.day:
        return 'День'.toUpperCase();
      case TimeSliceEnum.week:
        return 'Неделя'.toUpperCase();
      case TimeSliceEnum.month:
        return 'Месяц'.toUpperCase();
      case TimeSliceEnum.year:
        return 'Год'.toUpperCase();
    }
  }
}
