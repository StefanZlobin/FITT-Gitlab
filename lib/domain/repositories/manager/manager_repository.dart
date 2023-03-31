import 'package:fitt/domain/entities/filters/staff_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';

abstract class ManagerRepository {
  /// Позволяет получить клубы по [StaffFilters]
  Future<KPI> getManagerClubs({
    required StaffFilters staffFilters,
  });

  /// Позволяет получить клуб
  Future<KPI> getManagerClub({
    required String clubUuid,
  });

  /// Позволяет получить kpi за период
  Future<KPI> getKPIForPeriods({
    required StaffFilters staffFilters,
  });

  /// Позволяет получить количество посетителей за выбранную дату (день)
  Future<int> getNumberVisitorsPerDay({
    required DateTime selectedDay,
  });
}
