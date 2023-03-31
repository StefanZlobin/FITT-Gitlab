import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';

abstract class AnalyticsRepository {
  /// Получение аналитики по клубам по [AnalyticsFilters] analyticsFilters
  Future<KPI> getClubsKPI({required AnalyticsFilters analyticsFilters});

  /// Служит для прослушивания изменений [KPI] исходя из измененных фильтров
  Stream<KPI?> get analytics;
}
