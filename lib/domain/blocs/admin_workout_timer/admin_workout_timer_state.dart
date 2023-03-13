part of 'admin_workout_timer_bloc.dart';

@freezed
class AdminWorkoutTimerState with _$AdminWorkoutTimerState {
  const factory AdminWorkoutTimerState.timerInitial({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _AdminWorkoutTimerStateTimerInitial;
  const factory AdminWorkoutTimerState.timerRunInProgress({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _AdminWorkoutTimerStateTimerRunInProgress;
  const factory AdminWorkoutTimerState.timerRunInDanger({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _AdminWorkoutTimerStateTimerRunInDanger;
  const factory AdminWorkoutTimerState.timerRunComplete({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _AdminWorkoutTimerStateTimerRunComplete;
}
