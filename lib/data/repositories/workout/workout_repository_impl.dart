import 'package:dio/dio.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/data/models/request/workout/cancel_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/finish_workout_request_body.dart';
import 'package:fitt/data/models/request/workout/get_workouts_request_body.dart';
import 'package:fitt/data/models/request/workout/start_workout_request_body.dart';
import 'package:fitt/data/source/remote_data_source/workout_api_client/workout_api_client.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/repositories/workout/workout_repository.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  WorkoutRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = WorkoutApiClient(dio, baseUrl: baseUrl);

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
    } on Exception catch (e) {
      throw Exception(e);
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
        '59.934127, 30.342414',
        GetWorkoutsRequestBody(
          limit: _perPage,
          offset: offset,
          workoutPhase: workoutPhase.convertSortingToField(workoutPhase),
          workoutSorting: workoutSorting.convertSortingToField(workoutSorting),
        ),
      );
      return workouts.results;
    } on Exception catch (e) {
      throw Exception(e);
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
    } on Exception catch (e) {
      throw Exception(e);
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
    } on Exception catch (e) {
      throw Exception(e);
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
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
