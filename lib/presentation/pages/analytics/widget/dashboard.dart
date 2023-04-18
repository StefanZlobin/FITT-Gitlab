import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/analytics_dashboard/analytics_dashboard_bloc.dart';
import 'package:fitt/domain/blocs/analytics_filtering/analytics_filtering_bloc.dart';
import 'package:fitt/presentation/pages/analytics/widget/change_date_range_widget.dart';
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
          initial: () => const Center(child: CircularProgressIndicator()),
          loaded: (chart) {
            return SizedBox(
              height: 200,
              child: ListView(
                children: [
                  const ChangeDateRangeWidget(),
                  const SizedBox(height: 50),
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
          error: (_) => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
