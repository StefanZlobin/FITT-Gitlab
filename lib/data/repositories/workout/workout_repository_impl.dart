// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/models/request/workout/cancel_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/finish_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/get_workouts_request_body.dart';
import 'package:fitt/data/models/request/workout/start_workout_request_body.dart';
import 'package:fitt/data/source/remote_data_source/workout_api_client/workout_api_client.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/workout/workout_repository.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  WorkoutRepositoryImpl(this.dio, {this.baseUrl}) : _apiClient = WorkoutApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final WorkoutApiClient _apiClient;

  /// Number of elements per page
  static const int _perPage = 5;

  @override
  Future<Workout> getWorkout(String uuid) async {
    try {
      final workout = await _apiClient.getWorkout(uuid);
      
      return workout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );

      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<List<Workout>> getWorkouts({
    int offset = -1,
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.planned,
  }) async {
    late String xPosition;
    try {
      final geolocation = await getIt<GeolocationService>().getCurrentPosition();
      xPosition = 'Point(${geolocation.latitude} ${geolocation.longitude})';
    } on Exception {
      xPosition = '';
    }
    try {
      final workouts = await _apiClient.getWorkouts(
        xPosition,
        GetWorkoutsRequestBody(
          limit: offset == -1 ? 0 : _perPage,
          offset: offset,
          workoutPhase: workoutPhase.convertSortingToField(workoutPhase),
          workoutSorting: workoutSorting.convertSortingToField(workoutSorting),
        ),
      );

      return workouts.results;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );

      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<Workout> cancelWorkout({required Workout workout}) async {
    try {
      final canceledWorkout = await _apiClient.cancelWorkout(
        workout.uuid,
        CancelWorkoutRequestBody(workout),
      );

      return canceledWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<Workout> finishWorkout({required Workout workout}) async {
    try {
      final finishedWorkout = await _apiClient.finishWorkout(
        workout.uuid,
        FinishWorkoutRequestBody(workout),
      );

      return finishedWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
    
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<Workout> startWorkout({required Workout workout}) async {
    try {
      final startedWorkout = await _apiClient.startWorkout(
        workout.uuid,
        StartWorkoutRequestBody(workout),
      );

      return startedWorkout;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      
      throw NetworkExceptions.getDioException(e);
    }
  }
}
