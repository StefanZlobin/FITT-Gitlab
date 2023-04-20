// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/admin_workout_finish_reason_enum.dart';
import 'package:fitt/data/models/request/admin/admin_set_locker_number_request_body.dart';
import 'package:fitt/data/models/request/admin/admin_workout_finish_reason_request_body.dart';
import 'package:fitt/data/models/request/admin/admin_workouts_filters_body.dart';
import 'package:fitt/data/source/remote_data_source/admin_api_client/admin_api_client.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/features/workouts/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/features/workouts/domain/repositories/admin/admin_repository.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AdminRepositoryImpl implements AdminRepository {
  AdminRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = AdminApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final AdminApiClient _apiClient;

  @override
  Future<AdminWorkout> adminForceFinish({
    required String adminWorkoutUuid,
    required AdminWorkoutFinishReasonEnum adminWorkoutFinishReasonEnum,
    String? comment,
  }) async {
    try {
      final adminWorkout = _apiClient.adminForceFinish(
        adminWorkoutUuid,
        AdminWorkoutFinishReasonRequestBody(
          adminWorkoutFinishReasonEnum: adminWorkoutFinishReasonEnum,
          comment: comment ?? 'none',
        ),
      );
      return adminWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> adminSetLockerNumber({
    required String uuid,
    required String lockerNumber,
  }) async {
    try {
      await _apiClient.adminSetLockerNumber(
        uuid,
        AdminSetLockerNumberRequestBody(key: lockerNumber),
      );
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<AdminWorkout> adminWorkoutConfirmFinish({
    required String adminWorkoutUuid,
  }) async {
    try {
      final adminWorkout =
          await _apiClient.adminWorkoutConfirmFinish(adminWorkoutUuid);
      return adminWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<AdminWorkout> adminWorkoutConfirmStart({
    required String adminWorkoutUuid,
  }) async {
    try {
      final adminWorkout =
          await _apiClient.adminWorkoutConfirmStart(adminWorkoutUuid);
      return adminWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<AdminClub> getAdminClub({required String adminClubUuid}) async {
    try {
      final adminClub = await _apiClient.getAdminClub(adminClubUuid);
      return adminClub;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<AdminClub>> getAdminClubs(int? limit, int? offset) async {
    try {
      final adminClubs = await _apiClient.getAdminClubs(-1, 0);
      return adminClubs.results;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<AdminWorkout> getAdminWorkout({
    required String adminWorkoutUuid,
  }) async {
    try {
      final adminWorkout = await _apiClient.getAdminWorkout(adminWorkoutUuid);
      return adminWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<AdminWorkout>> getAdminWorkouts(
    int limit,
    int offset, {
    required AdminWorkoutsFiltersRequestBody filters,
  }) async {
    try {
      final adminWorkouts = await _apiClient.getAdminWorkouts(
        limit,
        offset,
        filters: filters,
      );
      return adminWorkouts.results;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }
}
