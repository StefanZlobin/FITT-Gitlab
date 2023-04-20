import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/repositories/workout/workout_repository.dart';

class WorkoutUseCase {
  final workoutRepository = getIt<WorkoutRepository>();

  Future<List<Workout>> getWorkouts({
    int offset = -1,
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.planned,
  }) async {
    final workouts = await workoutRepository.getWorkouts(
      offset: offset,
      workoutPhase: workoutPhase,
      workoutSorting: workoutSorting,
    );
    return workouts;
  }

  Future<Workout?> getClosestWorkout() async {
    final workouts = await workoutRepository.getClosestWorkout();
    return workouts;
  }

  Future<Workout> getWorkout({required String workoutUuid}) async {
    final workout = await workoutRepository.getWorkout(workoutUuid);
    return workout;
  }

  Future<Workout> cancelWorkout({required Workout workout}) async {
    final canceledWorkout =
        await workoutRepository.cancelWorkout(workout: workout);
    return canceledWorkout;
  }

  Future<Workout> startWorkout({required Workout workout}) async {
    final startedWorkout =
        await workoutRepository.startWorkout(workout: workout);
    return startedWorkout;
  }

  Future<Workout> finishWorkout({required Workout workout}) async {
    final finishedWorkout =
        await workoutRepository.finishWorkout(workout: workout);
    return finishedWorkout;
  }
}
