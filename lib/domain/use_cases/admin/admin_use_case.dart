import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/domain/repositories/admin/admin_repository.dart';

class AdminUseCase {
  final adminRepository = getIt<AdminRepository>();

  Future<List<AdminClub>> getAdminClubs({
    int? limit,
    int? offset,
  }) async {
    final adminClubs = await adminRepository.getAdminClubs(limit, offset);
    return adminClubs;
  }

  Future<AdminClub> getAdminClub({required String adminClubUuid}) async {
    final adminClub =
        await adminRepository.getAdminClub(adminClubUuid: adminClubUuid);
    return adminClub;
  }

  Future<List<AdminWorkout>> getAdminWorkouts(
    int limit,
    int offset, {
    required AdminWorkoutsFiltersRequestBody filters,
  }) async {
    final adminWorkouts =
        await adminRepository.getAdminWorkouts(limit, offset, filters: filters);
    return adminWorkouts;
  }

  Future<AdminWorkout> getAdminWorkout({
    required String adminWorkoutUuid,
  }) async {
    final adminWorkout = await adminRepository.getAdminWorkout(
        adminWorkoutUuid: adminWorkoutUuid);
    return adminWorkout;
  }

  Future<AdminWorkout> adminWorkoutConfirmStart({
    required String adminWorkoutUuid,
  }) async {
    final adminWorkout = await adminRepository.adminWorkoutConfirmStart(
        adminWorkoutUuid: adminWorkoutUuid);
    return adminWorkout;
  }

  Future<AdminWorkout> adminWorkoutConfirmFinish({
    required String adminWorkoutUuid,
  }) async {
    final adminWorkout = await adminRepository.adminWorkoutConfirmFinish(
        adminWorkoutUuid: adminWorkoutUuid);
    return adminWorkout;
  }

  Future<void> adminSetLockerNumber({
    required String uuid,
    required String lockerNumber,
  }) async {
    await adminRepository.adminSetLockerNumber(
        uuid: uuid, lockerNumber: lockerNumber);
  }

  Future<AdminWorkout> adminForceFinish({
    required String adminWorkoutUuid,
    required AdminWorkoutFinishReasonEnum adminWorkoutFinishReasonEnum,
    String? comment,
  }) async {
    final adminWorkout = await adminRepository.adminForceFinish(
      adminWorkoutUuid: adminWorkoutUuid,
      adminWorkoutFinishReasonEnum: adminWorkoutFinishReasonEnum,
      comment: comment,
    );
    return adminWorkout;
  }
}
