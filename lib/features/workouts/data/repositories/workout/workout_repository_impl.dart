// ignore_for_file: only_throw_errors

import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/features/workouts/data/models/request/workout/cancel_workout_request_body.dart';
import 'package:fitt/features/workouts/data/models/request/workout/finish_workout_request_body.dart';
import 'package:fitt/features/workouts/data/models/request/workout/get_workouts_request_body.dart';
import 'package:fitt/features/workouts/data/models/request/workout/start_workout_request_body.dart';
import 'package:fitt/features/workouts/data/source/remote_data_source/workout_api_client/workout_api_client.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/repositories/workout/workout_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  WorkoutRepositoryImpl(
    this.dio, {
    this.baseUrl,
  }) : _apiClient = WorkoutApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final WorkoutApiClient _apiClient;

  /// Number of elements per page
  static const int _perPage = 5;

  final BehaviorSubject<List<Workout>> _workoutsController =
      BehaviorSubject.seeded(<Workout>[], sync: true);
  void Function(List<Workout>) get _updateWorkouts =>
      _workoutsController.sink.add;
  @override
  Stream<List<Workout>> get workouts => _workoutsController;

  final BehaviorSubject<List<Workout>> _workoutsArchiveController =
      BehaviorSubject.seeded(<Workout>[], sync: true);
  void Function(List<Workout>) get _updateWorkoutsArchive =>
      _workoutsArchiveController.sink.add;
  @override
  Stream<List<Workout>> get workoutsArchive => _workoutsArchiveController;

  final BehaviorSubject<Workout?> _closestWorkoutController =
      BehaviorSubject(sync: true);
  void Function(Workout?) get _updateClosestWorkout =>
      _closestWorkoutController.sink.add;
  @override
  Stream<Workout?> get closestWorkout => _closestWorkoutController;

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
    try {
      final workouts = await _apiClient.getWorkouts(
        await _getPosition(),
        GetWorkoutsRequestBody(
          limit: offset == -1 ? 0 : _perPage,
          offset: offset,
          workoutPhase: workoutPhase.convertSortingToField(workoutPhase),
          workoutSorting: workoutSorting.convertSortingToField(workoutSorting),
        ),
      );
      if (workoutPhase == WorkoutPhaseEnum.planned) {
        _updateWorkouts(workouts.results);
      } else if (workoutPhase == WorkoutPhaseEnum.done) {
        _updateWorkoutsArchive(workouts.results);
      }

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
  Future<Workout?> getClosestWorkout({
    int offset = -1,
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.inProcess,
  }) async {
    try {
      final workouts = await _apiClient.getWorkouts(
        await _getPosition(),
        GetWorkoutsRequestBody(
          limit: offset == -1 ? 0 : _perPage,
          offset: offset,
          workoutPhase: workoutPhase.convertSortingToField(workoutPhase),
          workoutSorting: workoutSorting.convertSortingToField(workoutSorting),
        ),
      );
      if (workouts.results.isEmpty) {
        _updateClosestWorkout(null);
        final res = await getWorkouts();
        res.sort((a, b) => a.canStartTime.compareTo(b.canStartTime));
        _updateClosestWorkout(res.firstOrNull);
        return res.firstOrNull;
      } else {
        _updateClosestWorkout(workouts.results.firstOrNull);
        return workouts.results.firstOrNull;
      }
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );

      throw NetworkExceptions.getDioException(e);
    }
  }

  Future<String> _getPosition() async {
    late String xPosition;

    try {
      final geolocation =
          await getIt<GeolocationService>().getCurrentPosition();
      xPosition = 'Point(${geolocation.latitude} ${geolocation.longitude})';
    } on Exception {
      xPosition = '';
    }

    return xPosition;
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

  @override
  FutureOr onDispose() {
    _workoutsController.close();
    _closestWorkoutController.close();
    _workoutsArchiveController.close();
  }
}
