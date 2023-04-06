import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_range_to_string.dart';
import 'package:fitt/domain/blocs/analytics_dashboard/analytics_dashboard_bloc.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/presentation/pages/analytics/widget/dashboard_wave_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnalyticsDashboardBloc, AnalyticsDashboardState>(
      bloc: getIt<AnalyticsDashboardBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loaded: (chart) {
            return SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
                    bloc: getIt<AnalyticsFilteringBloc>(),
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox(),
                        loaded: (
                          timeSlice,
                          _,
                          startDateRange,
                          endDateRange,
                          selectedDate,
                        ) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  getIt<AnalyticsFilteringBloc>().add(
                                    AnalyticsFilteringEvent.dateRangeChanged(
                                      timeSlice: timeSlice,
                                      selectedDate: selectedDate.subtract(
                                        Duration(
                                          days: getIt<AnalyticsFilteringBloc>()
                                              .countDaysForAddOrSubtract(
                                            selectedDate,
                                            timeSlice,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  AppIcons.arr_big_left,
                                  color: AppColors.kBaseBlack,
                                  size: 18,
                                ),
                              ),
                              Text(
                                DateTimeRangeToSting.dateTimeRangeToSting(
                                  timeSlice,
                                  startDateRange,
                                  endDateRange,
                                ),
                                style: AppTypography.kH16
                                    .apply(color: AppColors.kBaseBlack),
                              ),
                              GestureDetector(
                                onTap: () {
                                  getIt<AnalyticsFilteringBloc>().add(
                                    AnalyticsFilteringEvent.dateRangeChanged(
                                      timeSlice: timeSlice,
                                      selectedDate: selectedDate.add(
                                        Duration(
                                          days: getIt<AnalyticsFilteringBloc>()
                                              .countDaysForAddOrSubtract(
                                            selectedDate,
                                            timeSlice,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  AppIcons.arr_big_right,
                                  color: AppColors.kBaseBlack,
                                  size: 18,
                                ),
                              ),
                            ],
                          );
                        },
                        error: (_) => const SizedBox(),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  BlocBuilder<AnalyticsFilteringBloc, AnalyticsFilteringState>(
                    bloc: getIt<AnalyticsFilteringBloc>(),
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox(),
                        loaded: (timeSlice, _, __, ___, ____) {
                          return DashboardWaveStats(
                            workoutsChartLineData: chart.workoutsChartLineData,
                            dashboardSkale: timeSlice,
                          );
                        },
                        error: (error) => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          error: (_) => const SizedBox(),
        );
      },
    );
  }
}
