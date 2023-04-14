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
    late final double width;
    final deviceWidth = MediaQuery.of(context).size.width;
    final double fullWidgetSize = workoutsChartLineData.length * 18;
    // ignore: unused_local_variable
    final diffBeetwenDeviceAndWidgetSizes = deviceWidth - fullWidgetSize;
    // ignore: unused_local_variable
    late final double marginBeetwenWidgets;

    switch (dashboardSkale) {
      case TimeSliceEnum.day:
        width = 4;
        marginBeetwenWidgets = 4;
        break;
      case TimeSliceEnum.week:
        width = 24;
        marginBeetwenWidgets = 24 * 1.5;
        //(diffBeetwenDeviceAndWidgetSizes / workoutsChartLineData.length) -
        //    diffBeetwenDeviceAndWidgetSizes;
        break;
      case TimeSliceEnum.month:
        width = 4;
        marginBeetwenWidgets = 4;
        break;
      case TimeSliceEnum.year:
        width = 16;
        marginBeetwenWidgets = 16 * 1.5;
        //(diffBeetwenDeviceAndWidgetSizes / workoutsChartLineData.length) -
        //    diffBeetwenDeviceAndWidgetSizes;

        break;
    }

    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: workoutsChartLineData.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            //width: double.parse(marginBeetwenWidgets.toStringAsFixed(4)),
            width: marginBeetwenWidgets,
          );
        },
        itemBuilder: (context, i) {
          return _buildLine(i, maxStat, width);
        },
      ),
    );
  }

  Widget _buildLine(int i, int maxStat, double width) {
    return SizedBox(
      width: 18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildVerticalLine(i, maxStat, width),
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
  }

  Container _buildVerticalLine(int i, int maxStat, double width) {
    return Container(
      height: ((workoutsChartLineData[i].countCompletedWorkout == 0
                      ? 4
                      : workoutsChartLineData[i].countCompletedWorkout * 73) /
                  (maxStat == 0 ? 1 : maxStat)) <
              4.0
          ? 4
          : (workoutsChartLineData[i].countCompletedWorkout == 0
                  ? 4
                  : workoutsChartLineData[i].countCompletedWorkout * 73) /
              (maxStat == 0 ? 1 : maxStat),
      width: width,
      decoration: BoxDecoration(
        color: workoutsChartLineData[i].countCompletedWorkout == 0
            ? AppColors.kOxford40
            : AppColors.kBaseBlack,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
