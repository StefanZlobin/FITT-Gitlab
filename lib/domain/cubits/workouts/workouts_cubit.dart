import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/auth_mixin.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/use_cases/workouts/workout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_cubit.freezed.dart';
part 'workouts_state.dart';

class WorkoutsCubit extends Cubit<WorkoutsState> with AuthMixin, UserMixin {
  WorkoutsCubit() : super(const _WorkoutsStateInitial()) {
    auth.listen((AuthenticationStatusEnum auth) {
      if (auth == AuthenticationStatusEnum.authenticated) {
        getWorkouts();
      }
    });

    user.listen((User? user) {
      if (user != null) {
        getWorkouts();
      }
    });
  }

  final workoutUseCase = WorkoutUseCase();

  Future<void> getWorkouts({
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.planned,
  }) async {
    emit(const _WorkoutsStateLoading());
    try {
      final workouts = await workoutUseCase.getWorkouts(
        workoutPhase: workoutPhase,
        workoutSorting: workoutSorting,
      );
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName:
            'У пользователя запланированно ${workouts.length} тренировок',
      );
      if (workouts.isEmpty) {
        final startedWorkout = await _getStartedWorkout();
        return emit(
          _WorkoutsStateLoaded(workouts: [], closestWorkout: startedWorkout),
        );
      } else {
        workouts.sort((a, b) => a.canStartTime.compareTo(b.canStartTime));
        final closestWorkout = await _getStartedWorkout() ?? workouts.first;
        emit(
          _WorkoutsStateLoaded(
            workouts: workouts,
            closestWorkout: closestWorkout,
          ),
        );
      }
    } on Exception catch (e) {
      emit(_WorkoutsStateError(error: e.toString()));
    }
  }

  Future<Workout?> _getStartedWorkout() async {
    final startedWorkout = await workoutUseCase.getWorkouts(
      workoutPhase: WorkoutPhaseEnum.inProcess,
    );
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'У пользователя тренировка в процессе',
    );
    startedWorkout.removeWhere((w) => w.canEndTime.isBefore(DateTime.now()));
    startedWorkout.sort((a, b) => a.canStartTime.compareTo(b.canStartTime));
    return startedWorkout.isEmpty ? null : startedWorkout.first;
  }
}
