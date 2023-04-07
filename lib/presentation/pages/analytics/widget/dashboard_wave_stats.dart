import 'dart:math' as math;

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/domain/entities/workouts_chart_data/workouts_chart_line_data.dart';
import 'package:flutter/material.dart';

class DashboardWaveStats extends StatelessWidget {
  const DashboardWaveStats({
    super.key,
    required this.workoutsChartLineData,
    required this.dashboardSkale,
  });

  final List<WorkoutsChartLineData> workoutsChartLineData;
  final TimeSliceEnum dashboardSkale;

  @override
  Widget build(BuildContext context) {
    final List<int> stats =
        workoutsChartLineData.map((e) => e.countCompletedWorkout).toList();
    final maxStat = stats.reduce(math.max);
    final lines = <Widget>[];
    late final double width;

    switch (dashboardSkale) {
      case TimeSliceEnum.day:
        width = 4;
        break;
      case TimeSliceEnum.week:
        width = 24;
        break;
      case TimeSliceEnum.month:
        width = 4;
        break;
      case TimeSliceEnum.year:
        width = 16;
        break;
    }

    for (var i = 0; i < workoutsChartLineData.length; i++) {
      final widget = SizedBox(
        width: 13,
        child: Column(
          children: [
            Container(
              height: ((workoutsChartLineData[i].countCompletedWorkout == 0
                              ? 4
                              : workoutsChartLineData[i].countCompletedWorkout *
                                  73) /
                          (maxStat == 0 ? 1 : maxStat)) <
                      4.0
                  ? 4
                  : (workoutsChartLineData[i].countCompletedWorkout == 0
                          ? 4
                          : workoutsChartLineData[i].countCompletedWorkout *
                              73) /
                      (maxStat == 0 ? 1 : maxStat),
              width: width,
              decoration: BoxDecoration(
                color: workoutsChartLineData[i].countSheduledWorkout != 0 ||
                        workoutsChartLineData[i].countCompletedWorkout == 0
                    ? AppColors.kOxford40
                    : AppColors.kBaseBlack,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            const SizedBox(height: 6),
            if (dashboardSkale == TimeSliceEnum.day)
              Text(
                workoutsChartLineData[i].timeSlice,
                style: AppTypography.kBody10,
              )
            else if (dashboardSkale == TimeSliceEnum.week)
              Text(
                DateTimeUtils.abbrWeek(
                  int.parse(
                    workoutsChartLineData[i].timeSlice,
                  ),
                ),
                style: AppTypography.kBody10,
              )
            else if (dashboardSkale == TimeSliceEnum.month)
              Text(
                workoutsChartLineData[i].timeSlice,
                style: AppTypography.kBody10,
              )
            else
              Text(
                DateTimeUtils.abbrMonth(
                  int.parse(
                    workoutsChartLineData[i].timeSlice,
                  ),
                ),
                style: AppTypography.kBody10,
              ),
          ],
        ),
      );
      lines.add(widget);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: lines,
    );
  }
}
