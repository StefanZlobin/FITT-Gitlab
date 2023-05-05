part of 'workouts_bloc.dart';

@freezed
class WorkoutsEvent with _$WorkoutsEvent {
  const factory WorkoutsEvent.getWorkouts({
    @Default(WorkoutPhaseEnum.planned) WorkoutPhaseEnum workoutPhase,
    @Default(WorkoutSortingEnum.oldFirst) WorkoutSortingEnum workoutSorting,
  }) = _WorkoutsEventGetWorkouts;

  const factory WorkoutsEvent.setWorkouts({
    required List<Workout> workouts,
  }) = _WorkoutsEventSetWorkouts;
}
