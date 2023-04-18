// ignore_for_file: prefer_mixin

import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:get_it/get_it.dart';

abstract class WorkoutRepository with Disposable {
  /// Getting all training sessions by phase [WorkoutPhaseEnum]
  /// and sorting [WorkoutSortingEnum] parameters
  Future<List<Workout>> getWorkouts({
    int offset = -1,
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.planned,
  });

  /// Getting a specific workout by its uuid
  Future<Workout> getWorkout(String uuid);

    /// Getting a specific workout by its uuid
  Future<Workout?> getClosestWorkout();

  /// Cancel workout
  Future<Workout> cancelWorkout({required Workout workout});

  /// Start workout
  Future<Workout> startWorkout({required Workout workout});

  /// Finish workout
  Future<Workout> finishWorkout({required Workout workout});

  Stream<List<Workout>> get workouts;
  Stream<Workout?> get closestWorkout;
}
