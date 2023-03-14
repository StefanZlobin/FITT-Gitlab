// ignore_for_file: parameter_assignments

import 'package:intl/intl.dart';

class TimerUtils {
  String hoursAndMinutes(Duration duration) {
    if (duration.inMinutes < 60) {
      return minutes(duration);
    }
    if (duration.inMinutes % 60 == 0) {
      return hours(duration);
    }
    return '${hours(duration)} ${minutes(Duration(minutes: duration.inMinutes % 60))}';
  }

  String hours(Duration duration) {
    final hours = duration.inHours;
    return Intl.plural(
      hours,
      one: '$hours час',
      two: '$hours часа',
      few: '$hours часа',
      many: '$hours часов',
      zero: '$hours часов',
      other: '$hours часов',
      args: [duration],
      name: '_Duration_hours',
    );
  }

  String minutes(Duration duration) {
    final minutes = duration.inMinutes;
    return Intl.plural(
      minutes,
      one: '$minutes минута',
      two: '$minutes минуты',
      few: '$minutes минуты',
      many: '$minutes минут',
      zero: '$minutes минут',
      other: '$minutes минут',
      args: [duration],
      name: '_Duration_minutes',
    );
  }

  static String createTimerString(Duration duration) {
    final bool isNegative = duration.isNegative || duration.inHours < 1;

    if (isNegative) {
      return _createClockLikeTimerAbbr(duration);
    }
    if (duration.inHours > 0) {
      return _createTimerAbbrWithLetters(duration);
    }

    return _createClockLikeTimerAbbr(duration);
  }
}

String _createClockLikeTimerAbbr(Duration duration) {
  final hasHours = duration.inHours != 0;
  final bool isNegative = duration.isNegative;
  duration = duration.abs();

  final result = [
    if (hasHours) duration.inHours % 24,
    if (hasHours) _maybeAddPrefixZero(duration.inMinutes % 60) else duration.inMinutes % 60,
    if (!hasHours) _maybeAddPrefixZero(duration.inSeconds % 60),
  ].join(':');
  return isNegative ? '-$result' : result;
}

String _createTimerAbbrWithLetters(Duration duration) {
  return [
    _daysAbbr(duration),
    _hoursAbbr(duration),
    _minutesAbbr(duration),
  ] //
      .where((e) => e != null)
      .join(' ');
}

String? _daysAbbr(Duration duration) {
  final days = duration.inDays;
  if (days > 0) {
    return '$daysд';
  }
  return null;
}

String? _hoursAbbr(Duration duration) {
  final hours = duration.inHours % 24;
  if (hours > 0) {
    return '$hoursч';
  }
  return null;
}

String? _minutesAbbr(Duration duration) {
  final minutes = duration.inMinutes % 60;
  final days = duration.inDays;
  if (days == 0 && minutes != 0) {
    return '$minutesм';
  }
  return null;
}

String _maybeAddPrefixZero(int x) {
  return x > 9 ? '$x' : '0$x';
}
