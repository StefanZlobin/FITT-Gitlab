import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:fitt/domain/services/push_notifications/push_notifications_service.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/repositories/workout/workout_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_archive_bloc.freezed.dart';
part 'workouts_archive_event.dart';
part 'workouts_archive_state.dart';

class WorkoutsArchiveBloc
    extends Bloc<WorkoutsArchiveEvent, WorkoutsArchiveState> {
  WorkoutsArchiveBloc() : super(const WorkoutsArchiveState.initial()) {
    on<_WorkoutsArchiveEventGetWorkouts>(_onWorkoutsArchiveEventGetWorkouts);
    on<_WorkoutsArchiveEventSetWorkouts>(_onWorkoutsArchiveEventSetWorkouts);

    getIt<WorkoutRepository>().workoutsArchive.listen((List<Workout> workouts) {
      offset += workouts.length;
      _workouts.addAll(workouts);

      add(WorkoutsArchiveEvent.setWorkouts(workouts: _workouts));
    });

    getIt<ResourceRepository>()
        .workoutSortingItems
        .listen((Map<WorkoutSortingEnum, bool> workoutSortingitems) {
      offset = 0;
      _workouts.clear();

      add(
        WorkoutsArchiveEvent.getWorkouts(
          workoutPhase: WorkoutPhaseEnum.done,
          workoutSorting:
              workoutSortingitems.entries.firstWhere((e) => e.value).key,
        ),
      );
    });

    getIt<PushNotificationsService>()
        .changeWorkoutStatusNotification
        .listen((Map<String, String>? changeWorkoutNotification) {
      if (changeWorkoutNotification != null &&
          changeWorkoutNotification.values.first == 'CANCEL') {
        offset = 0;
        _workouts.clear();

        add(const WorkoutsArchiveEvent.getWorkouts(
          workoutPhase: WorkoutPhaseEnum.done,
          workoutSorting: WorkoutSortingEnum.newFirst,
        ));
      }
    });
  }

  int offset = 0;
  final List<Workout> _workouts = [];

  Future<void> _onWorkoutsArchiveEventGetWorkouts(
    _WorkoutsArchiveEventGetWorkouts event,
    Emitter<WorkoutsArchiveState> emit,
  ) async {
    emit(
      WorkoutsArchiveState.loading(
        prevWorkouts: _workouts,
        isFirstFetch: offset == 0,
      ),
    );
    try {
      await getIt<WorkoutRepository>().getWorkouts(
        offset: offset,
        workoutPhase: event.workoutPhase,
        workoutSorting: event.workoutSorting,
      );
    } on NetworkExceptions catch (e) {
      emit(WorkoutsArchiveState.error(
        error: NetworkExceptions.getErrorMessage(e),
      ));
    }
  }

  void _onWorkoutsArchiveEventSetWorkouts(
    _WorkoutsArchiveEventSetWorkouts event,
    Emitter<WorkoutsArchiveState> emit,
  ) {
    emit(WorkoutsArchiveState.loaded(workouts: event.workouts));
  }
}
