part of 'workouts_archive_bloc.dart';

@freezed
class WorkoutsArchiveEvent with _$WorkoutsArchiveEvent {
  const factory WorkoutsArchiveEvent.getWorkouts({
    @Default(WorkoutPhaseEnum.done) WorkoutPhaseEnum workoutPhase,
    @Default(WorkoutSortingEnum.newFirst) WorkoutSortingEnum workoutSorting,
  }) = _WorkoutsArchiveEventGetWorkouts;

  const factory WorkoutsArchiveEvent.setWorkouts({
    required List<Workout> workouts,
  }) = _WorkoutsArchiveEventSetWorkouts;
}
