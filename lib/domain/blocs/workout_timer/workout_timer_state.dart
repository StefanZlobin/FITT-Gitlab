part of 'workout_timer_bloc.dart';

@freezed
class WorkoutTimerState with _$WorkoutTimerState {
  const factory WorkoutTimerState.timerInitial({@Default(Duration(seconds: 60)) Duration duration}) =
      _WorkoutTimerStateTimerInitial;
  const factory WorkoutTimerState.timerRunInProgress({@Default(Duration(seconds: 60)) Duration duration}) =
      _WorkoutTimerStateTimerRunInProgress;
  const factory WorkoutTimerState.timerRunInDanger({@Default(Duration(seconds: 60)) Duration duration}) =
      _WorkoutTimerStateTimerRunInDanger;
  const factory WorkoutTimerState.timerRunComplete({@Default(Duration(seconds: 60)) Duration duration}) =
      _WorkoutTimerStateTimerRunComplete;
}
