// ignore_for_file: invariant_booleans

import 'package:clock/clock.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  const DateTimeUtils._();

  /// Compares two dates by year, month and day. Also checks that dates are in the same time zone.
  static bool sameDay(DateTime a, DateTime b) {
    assert(a.timeZoneOffset == b.timeZoneOffset);
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  /// Compares two dates by hour and minute. Also checks that dates are in the same time zone.
  static bool sameTime(DateTime a, DateTime b,
      {bool compareMilliseconds = false}) {
    assert(a.timeZoneOffset == b.timeZoneOffset);
    final result = a.hour == b.hour &&
        a.minute == b.minute &&
        a.second == b.second &&
        (!compareMilliseconds || a.millisecond == b.millisecond);
    return result;
  }

  static final DateFormat dateFormat = DateFormat.yMd();
  static final DateFormat dateFormatDetailed = DateFormat('dd MMMM y');
  static final DateFormat dateFormatWithoutYear = DateFormat('d MMMM');
  static final DateFormat timeFormat = DateFormat.Hm();
  static final DateFormat fullDateTimeFormat = DateFormat('dd MMMM y HH:mm');

  static String dateWithPrefix(DateTime date, [DateFormat? format]) {
    format ??= dateFormatWithoutYear;
    final formattedDate = format.format(date);
    final prefix = datePrefix(date);
    if (prefix == null) return formattedDate;
    return '$prefix, $formattedDate';
  }

  static String dateWithoutPrefix(DateTime date, [DateFormat? format]) {
    format ??= dateFormatWithoutYear;
    final formattedDate = format.format(date);
    return formattedDate;
  }

  /// Creates date prefix such as Вчера, Сегодня, Завтра
  static String? datePrefix(DateTime date) {
    final utc = date.toUtc();
    final bool today = sameDay(clock.now().toUtc(), utc);
    final bool yesterday = sameDay(clock.ago(days: 1).toUtc(), utc);
    final bool tomorrow = sameDay(clock.fromNow(days: 1).toUtc(), utc);
    if (today) return 'Сегодня';
    if (tomorrow) return 'Завтра';
    if (yesterday) return 'Вчера';
    return null;
  }

  static String nextWorkoutSession(DateTime date) {
    final nextWorkout = clock.fromNow().difference(date).abs();
    if (nextWorkout.inDays >= 1) {
      return '${nextWorkout.inDays.remainder(24)} д';
    } else if (nextWorkout.inDays < 1 && nextWorkout.inHours >= 1) {
      return '${nextWorkout.inHours.remainder(24)} ч ${nextWorkout.inMinutes.remainder(60)} м';
    } else {
      return '${nextWorkout.inMinutes.remainder(60)} м';
    }
  }

  static DateTime fromDateAndTime(DateTime date, DateTime time) {
    assert(date.timeZoneOffset == time.timeZoneOffset);
    return DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
      time.second,
      time.millisecond,
      time.microsecond,
    );
  }
}
