import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';

abstract class AdminRepository {
  /// Получение клубов администратора
  Future<List<AdminClub>> getAdminClubs(int? limit, int? offset);

  /// Получение конкретного клуба администратора
  Future<AdminClub> getAdminClub({required String adminClubUuid});

  /// Получение тренировок по фильтрам [AdminWorkoutsFiltersRequestBody]
  Future<List<AdminWorkout>> getAdminWorkouts(
    int limit,
    int offset, {
    required AdminWorkoutsFiltersRequestBody filters,
  });

  /// Получение конкретной тренировки по его id
  Future<AdminWorkout> getAdminWorkout({required String adminWorkoutUuid});

  /// Подтверждение начала тренировки со стороны администратора
  Future<AdminWorkout> adminWorkoutConfirmStart({
    required String adminWorkoutUuid,
  });

  /// Подтверждение завершения тренировки со стороны администратора
  Future<AdminWorkout> adminWorkoutConfirmFinish({
    required String adminWorkoutUuid,
  });

  /// Установка администратором номера шкафчика пользователя(занимающегося)
  Future<void> adminSetLockerNumber({
    required String uuid,
    required String lockerNumber,
  });

  /// Принудительное завершение тренировки администратором
  /// Используется, только если пользователь забыл завершить тренировку сам
  Future<AdminWorkout> adminForceFinish({
    required String adminWorkoutUuid,
    required AdminWorkoutFinishReasonEnum adminWorkoutFinishReasonEnum,
    String? comment,
  });
}
