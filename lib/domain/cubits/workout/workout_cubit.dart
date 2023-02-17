import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/use_cases/workout/workout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_cubit.freezed.dart';
part 'workout_state.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  WorkoutCubit() : super(const WorkoutState.initial());

  final _workoutUseCase = WorkoutUseCase();

  Future<void> getWorkout({required String workoutUuid}) async {
    try {
      final workout =
          await _workoutUseCase.getWorkout(workoutUuid: workoutUuid);
      emit(WorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(WorkoutState.error(error: e.toString()));
    }
  }

  Future<void> startWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.startWorkout(workout: w);
      emit(WorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(WorkoutState.error(error: e.toString()));
    }
  }

  Future<void> finishWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.finishWorkout(workout: w);
      emit(WorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(WorkoutState.error(error: e.toString()));
    }
  }

  Future<void> cancelWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.cancelWorkout(workout: w);
      emit(WorkoutState.loaded(workout: workout));
    } on Exception catch (e) {
      emit(WorkoutState.error(error: e.toString()));
    }
  }
}
