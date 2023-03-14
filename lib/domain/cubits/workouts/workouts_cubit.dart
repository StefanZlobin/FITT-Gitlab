import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/use_cases/workout/workout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_cubit.freezed.dart';
part 'workouts_state.dart';

class WorkoutsCubit extends Cubit<WorkoutsState> with UserMixin {
  WorkoutsCubit() : super(const _WorkoutsStateInitial()) {
    getWorkouts();
  }

  final workoutUseCase = WorkoutUseCase();

  Future<void> getWorkouts({
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.planned,
  }) async {
    emit(const _WorkoutsStateLoading());
    try {
      final workouts = await workoutUseCase.getWorkouts(workoutPhase: workoutPhase, workoutSorting: workoutSorting);
      if (workouts.isEmpty) {
        final startedWorkout = await _getStartedWorkout();
        return emit(_WorkoutsStateLoaded(workouts: [], closestWorkout: startedWorkout));
      } else {
        workouts.sort((a, b) => a.canStartTime.compareTo(b.canStartTime));
        final closestWorkout = await _getStartedWorkout() ?? workouts.first;
        emit(_WorkoutsStateLoaded(workouts: workouts, closestWorkout: closestWorkout));
      }
    } on Exception catch (e) {
      emit(_WorkoutsStateError(error: e.toString()));
    }
  }

  Future<Workout?> _getStartedWorkout() async {
    final startedWorkout = await workoutUseCase.getWorkouts(workoutPhase: WorkoutPhaseEnum.inProcess);
    startedWorkout.removeWhere((w) => w.canEndTime.isBefore(DateTime.now()));
    startedWorkout.sort((a, b) => a.canStartTime.compareTo(b.canStartTime));
    return startedWorkout.isEmpty ? null : startedWorkout.first;
  }
}
