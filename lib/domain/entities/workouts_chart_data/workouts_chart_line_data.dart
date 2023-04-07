// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_chart_line_data.freezed.dart';
part 'workouts_chart_line_data.g.dart';

@freezed
class WorkoutsChartLineData with _$WorkoutsChartLineData {
  const factory WorkoutsChartLineData({
    /// Отображение показателей на графике (числа, дни недели...)
    @JsonKey(name: 'label') required String timeSlice,

    /// Отображение запланированных тренировок
    @JsonKey(name: 'plan') required int countSheduledWorkout,

    /// Отображение закончившихся тренировок
    @JsonKey(name: 'fact') required int countCompletedWorkout,
  }) = _WorkoutsChartLineData;

  factory WorkoutsChartLineData.fromJson(Map<String, dynamic> json) =>
      _$WorkoutsChartLineDataFromJson(json);
}
