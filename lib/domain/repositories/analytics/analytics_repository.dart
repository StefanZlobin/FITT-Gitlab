import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:fitt/domain/entities/workouts_chart_data/workouts_chart_data.dart';

abstract class AnalyticsRepository {
  /// Получение аналитики по клубам по [AnalyticsFilters] analyticsFilters
  Future<KPI> getClubsKPI({required AnalyticsFilters analyticsFilters});

  /// Получение dashboard по клубам по [AnalyticsFilters] analyticsFilters
  Future<WorkoutsChartData> getWorkoutsChartData({
    required AnalyticsFilters analyticsFilters,
  });

  /// Служит для прослушивания изменений [KPI] исходя из измененных фильтров
  Stream<KPI?> get analytics;

  /// Служит для прослушивания изменений [WorkoutsChartData] исходя из измененных фильтров
  Stream<WorkoutsChartData?> get workoutsChartData;
}
