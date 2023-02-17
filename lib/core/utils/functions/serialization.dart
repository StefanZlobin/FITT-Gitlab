import 'package:fitt/core/constants/date_time_format.dart';
import 'package:json_annotation/json_annotation.dart';

DateTime dateFromString(String data) {
  return dateFormat.parse(data).toLocal();
}

DateTime? dateFromStringNullable(String? data) {
  return data == null ? null : dateFromString(data);
}

String dateToString(DateTime data) {
  return dateFormat.format(data.toUtc());
}

String? dateToStringNullable(DateTime? date) {
  return date == null ? null : dateToString(date.add(const Duration(days: 1)));
}

DateTime dateTimeFromStringRemoveUTC(String dateTime) {
  return DateTime.parse(dateTime.substring(0, dateTime.length - 1)).toLocal();
}

DateTime? dateTimeFromStringNullableRemoveUTC(String? dateTime) {
  return dateTime == null
      ? null
      : DateTime.parse(dateTime.substring(0, dateTime.length - 1)).toLocal();
}

DateTime dateTimeFromString(String dateTime) {
  return DateTime.parse(dateTime).toLocal();
}

DateTime? dateTimeFromStringNullable(String? dateTime) {
  return dateTime == null ? null : dateTimeFromString(dateTime);
}

String dateTimeToString(DateTime dateTime) {
  return dateTime.toUtc().toIso8601String();
}

String? dateTimeToStringNullable(DateTime? dateTime) {
  return dateTime == null ? null : dateTimeToString(dateTime);
}

int? toRublesNullable(int? value) {
  final res = value != null ? value ~/ 100 : null;
  return res;
}

int? toCentNullable(int? value) {
  final res = value != null ? value * 100 : null;
  return res;
}

int toRubles(int value) {
  final res = value ~/ 100;
  return res;
}

int toCent(int value) {
  final res = value * 100;
  return res;
}

DateTime timeFromString(String data) {
  final value = data.split('+')[0];
  final res = timeFormat.parse(value).toLocal(); //true
  return res;
}

DateTime? timeFromStringNullable(String? data) {
  return data == null ? null : timeFromString(data);
}

String timeToString(DateTime data) {
  return timeFormat.format(data.toUtc());
}

String? timeToStringNullable(DateTime? data) {
  return data == null ? null : timeToString(data);
}

class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  @override
  Duration fromJson(int json) {
    return Duration(minutes: json);
  }

  @override
  int toJson(Duration object) {
    return object.inMinutes;
  }
}
