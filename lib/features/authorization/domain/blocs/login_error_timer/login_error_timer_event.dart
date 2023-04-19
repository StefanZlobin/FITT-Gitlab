part of 'login_error_timer_bloc.dart';

@freezed
class LoginErrorTimerEvent with _$LoginErrorTimerEvent {
  const factory LoginErrorTimerEvent.setTimerInitial({
    required Duration duration,
  }) = _SetTimerInitial;
  const factory LoginErrorTimerEvent.timerStarted({
    required Duration duration,
  }) = _TimerStarted;
  const factory LoginErrorTimerEvent.timerTicked({
    required Duration duration,
  }) = _TimerTicked;
}
