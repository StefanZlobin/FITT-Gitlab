part of 'workout_timer_bloc.dart';

@freezed
class WorkoutTimerEvent with _$WorkoutTimerEvent {
  const factory WorkoutTimerEvent.timerStarted({
    @Default(Duration(seconds: 60)) Duration duration,
    required Workout workout,
  }) = _WorkoutTimerEventTimerStarted;
  const factory WorkoutTimerEvent.timerTicked({
    @Default(Duration(seconds: 60)) Duration duration,
    required Workout workout,
  }) = _WorkoutTimerEventTimerTicked;
  const factory WorkoutTimerEvent.timerComplete({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _WorkoutTimerEventTimerComplete;
}
