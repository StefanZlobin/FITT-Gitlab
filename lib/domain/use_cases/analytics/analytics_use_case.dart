import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';

class AnalyticsUseCase {
  final AnalyticsRepository analyticsRepository = getIt<AnalyticsRepository>();

  Future<void> getAnalytics({
    required AnalyticsFilters analyticsFilters,
  }) async {
    await analyticsRepository.getClubsKPI(analyticsFilters: analyticsFilters);
  }
}
