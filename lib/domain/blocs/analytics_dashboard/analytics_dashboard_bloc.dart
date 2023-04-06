import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/workouts_chart_data/workouts_chart_data.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_dashboard_bloc.freezed.dart';
part 'analytics_dashboard_event.dart';
part 'analytics_dashboard_state.dart';

class AnalyticsDashboardBloc
    extends Bloc<AnalyticsDashboardEvent, AnalyticsDashboardState> {
  AnalyticsDashboardBloc() : super(const _AnalyticsDashboardStateInitial()) {
    analyticsRepository.workoutsChartData
        .listen((WorkoutsChartData? workoutsChartData) {
      if (workoutsChartData != null) {
        add(AnalyticsDashboardEvent.workoutsChartDataChanged(
          workoutsChartData: workoutsChartData,
        ));
      }
    });

    on<_AnalyticsDashboardEventWorkoutsChartDataChanged>(
      _onAnalyticsDashboardEventWorkoutsChartDataChanged,
    );
  }

  final analyticsRepository = getIt<AnalyticsRepository>();

  void _onAnalyticsDashboardEventWorkoutsChartDataChanged(
    _AnalyticsDashboardEventWorkoutsChartDataChanged event,
    Emitter<AnalyticsDashboardState> emit,
  ) {
    emit(AnalyticsDashboardState.loaded(chartData: event.workoutsChartData));
  }
}
