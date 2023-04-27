import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/use_cases/workouts/workout_use_case.dart';
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
    } on NetworkExceptions catch (e) {
      emit(WorkoutState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> startWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.startWorkout(workout: w);
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Пользователь начал тренировку',
      );
      emit(WorkoutState.loaded(workout: workout));
    } on NetworkExceptions catch (e) {
      emit(WorkoutState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> finishWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.finishWorkout(workout: w);
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Пользователь закончил тренировку',
      );
      emit(WorkoutState.loaded(workout: workout));
    } on NetworkExceptions catch (e) {
      emit(WorkoutState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> cancelWorkout({required Workout w}) async {
    try {
      final workout = await _workoutUseCase.cancelWorkout(workout: w);
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Пользователь отменил тренировку',
      );
      emit(WorkoutState.loaded(workout: workout));
    } on NetworkExceptions catch (e) {
      emit(WorkoutState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }
}
