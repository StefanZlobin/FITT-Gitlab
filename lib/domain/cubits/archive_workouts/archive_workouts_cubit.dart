import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:fitt/features/workouts/domain/use_cases/workouts/workout_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'archive_workouts_cubit.freezed.dart';
part 'archive_workouts_state.dart';

class ArchiveWorkoutsBloc extends Cubit<ArchiveWorkoutsState> {
  ArchiveWorkoutsBloc() : super(const ArchiveWorkoutsState.initial()) {
    getArchiveWorkouts();
  }

  final workoutUseCase = WorkoutUseCase();

  /// Skip some elements
  int offset = 0;

  _ArchiveWorkoutsStateLoaded? get _prevLoaded => state.maybeMap(
        loaded: (s) => s,
        orElse: () => null,
      );

  List<Workout> oldArchiveWorkouts = <Workout>[];

  Future<void> getArchiveWorkouts({
    WorkoutSortingEnum workoutSorting = WorkoutSortingEnum.newFirst,
    WorkoutPhaseEnum workoutPhase = WorkoutPhaseEnum.done,
    bool needClearLoadedWorkouts = false,
  }) async {
    if (state is _ArchiveWorkoutsStateLoading) return;

    final currentState = state;

    if (currentState is _ArchiveWorkoutsStateLoaded) {
      oldArchiveWorkouts = _prevLoaded?.archiveWorkouts ?? [];
      if (needClearLoadedWorkouts) oldArchiveWorkouts.clear();
    }

    emit(
      ArchiveWorkoutsState.loading(
        oldArchiveWorkouts: oldArchiveWorkouts,
        isFirstFetch: offset == 0,
      ),
    );

    try {
      final newArchiveWorkouts = await workoutUseCase.getWorkouts(
        offset: offset,
        workoutPhase: workoutPhase,
        workoutSorting: workoutSorting,
      );

      final archiveWorkouts = oldArchiveWorkouts;

      archiveWorkouts.addAll(newArchiveWorkouts);

      offset += newArchiveWorkouts.length;

      emit(
        _prevLoaded?.copyWith(archiveWorkouts: archiveWorkouts) ??
            _ArchiveWorkoutsStateLoaded(archiveWorkouts: archiveWorkouts),
      );
    } on Exception catch (e) {
      emit(_ArchiveWorkoutsStateError(error: e.toString()));
    }
  }
}
