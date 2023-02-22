part of 'authentication_error_timer_bloc.dart';

@freezed
class AuthenticationErrorTimerState with _$AuthenticationErrorTimerState {
  const factory AuthenticationErrorTimerState.timerInitial({
    @Default(Duration(seconds: 60)) Duration duration,
  }) = _TimerInitial;
  const factory AuthenticationErrorTimerState.timerRunInProgress({
    required Duration duration,
  }) = _TimerRunInProgress;
  const factory AuthenticationErrorTimerState.timerRunPause({
    required Duration duration,
  }) = _TimerRunPause;
  const factory AuthenticationErrorTimerState.timerRunComplete({
    required int attemptsEnterCode,
  }) = _TimerRunComplete;
}
