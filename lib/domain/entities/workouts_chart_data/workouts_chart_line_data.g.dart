// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_chart_line_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutsChartLineData _$$_WorkoutsChartLineDataFromJson(
        Map<String, dynamic> json) =>
    _$_WorkoutsChartLineData(
      timeSlice: json['label'] as String,
      countSheduledWorkout: json['plan'] as int,
      countCompletedWorkout: json['fact'] as int,
    );

Map<String, dynamic> _$$_WorkoutsChartLineDataToJson(
        _$_WorkoutsChartLineData instance) =>
    <String, dynamic>{
      'label': instance.timeSlice,
      'plan': instance.countSheduledWorkout,
      'fact': instance.countCompletedWorkout,
    };
