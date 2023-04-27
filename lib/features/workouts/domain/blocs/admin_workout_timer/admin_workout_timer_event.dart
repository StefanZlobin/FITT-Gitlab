part of 'admin_workout_timer_bloc.dart';

@freezed
class AdminWorkoutTimerEvent with _$AdminWorkoutTimerEvent {
  const factory AdminWorkoutTimerEvent.timerStarted({
    @Default(Duration(seconds: 60)) Duration duration,
    required AdminWorkout workout,
  }) = _AdminWorkoutTimerEventTimerStarted;
  const factory AdminWorkoutTimerEvent.timerTicked({
    @Default(Duration(seconds: 60)) Duration duration,
    required AdminWorkout workout,
  }) = _AdminWorkoutTimerEventTimerTicked;
  const factory AdminWorkoutTimerEvent.timerComplete({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _AdminWorkoutTimerEventTimerComplete;
}
