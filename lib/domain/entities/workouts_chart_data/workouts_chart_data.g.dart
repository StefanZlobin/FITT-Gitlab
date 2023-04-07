// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_chart_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutsChartData _$$_WorkoutsChartDataFromJson(Map<String, dynamic> json) =>
    _$_WorkoutsChartData(
      timeSlice: json['slice'] as String?,
      workoutsChartLineData: (json['data'] as List<dynamic>)
          .map((e) => WorkoutsChartLineData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutsChartDataToJson(
        _$_WorkoutsChartData instance) =>
    <String, dynamic>{
      'slice': instance.timeSlice,
      'data': instance.workoutsChartLineData,
    };
