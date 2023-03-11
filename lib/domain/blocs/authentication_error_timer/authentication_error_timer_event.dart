part of 'authentication_error_timer_bloc.dart';

@freezed
class AuthenticationErrorTimerEvent with _$AuthenticationErrorTimerEvent {
  const factory AuthenticationErrorTimerEvent.setTimerInitial({
    required Duration duration,
  }) = _SetTimerInitial;
  const factory AuthenticationErrorTimerEvent.timerStarted({
    required Duration duration,
  }) = _TimerStarted;
  const factory AuthenticationErrorTimerEvent.timerTicked({
    required Duration duration,
  }) = _TimerTicked;
}
