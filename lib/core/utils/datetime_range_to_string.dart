import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/utils/datetime_utils.dart';

class DateTimeRangeToSting {
  static String dateTimeRangeToSting(
    TimeSliceEnum timeSlice,
    DateTime startDateRange,
    DateTime endDateRange,
  ) {
    late final String output;

    switch (timeSlice) {
      case TimeSliceEnum.day:
        output = DateTimeUtils.dateWithPostfix(startDateRange);
        break;
      case TimeSliceEnum.week:
        output = DateTimeUtils.dateFromTo(startDateRange, endDateRange);
        break;
      case TimeSliceEnum.month:
        output = DateTimeUtils.dateMonth(startDateRange);
        break;
      case TimeSliceEnum.year:
        output = DateTimeUtils.dateYear(endDateRange);
        break;
    }

    return output;
  }
}
