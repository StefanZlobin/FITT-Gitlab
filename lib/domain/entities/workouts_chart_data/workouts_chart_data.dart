// ignore_for_file: invalid_annotation_target

import 'package:fitt/domain/entities/workouts_chart_data/workouts_chart_line_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_chart_data.freezed.dart';
part 'workouts_chart_data.g.dart';

@freezed
class WorkoutsChartData with _$WorkoutsChartData {
  const factory WorkoutsChartData({
    @JsonKey(name: 'slice') required String? timeSlice,
    @JsonKey(name: 'data')
        required List<WorkoutsChartLineData> workoutsChartLineData,
  }) = _WorkoutsChartData;

  factory WorkoutsChartData.fromJson(Map<String, dynamic> json) =>
      _$WorkoutsChartDataFromJson(json);
}
