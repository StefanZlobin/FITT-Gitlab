// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_analytics_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAnalyticsRequestBody _$GetAnalyticsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    GetAnalyticsRequestBody(
      timeSlice: json['slice'] as String,
      clubsUuid:
          (json['club_ids'] as List<dynamic>).map((e) => e as String).toList(),
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
    );

Map<String, dynamic> _$GetAnalyticsRequestBodyToJson(
        GetAnalyticsRequestBody instance) =>
    <String, dynamic>{
      'slice': instance.timeSlice,
      'club_ids': instance.clubsUuid,
      'start_date': timeToFormattedString(instance.startDate),
      'end_date': timeToFormattedString(instance.endDate),
    };
