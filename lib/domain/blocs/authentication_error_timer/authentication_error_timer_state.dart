part of 'authentication_error_timer_bloc.dart';

@freezed
class AuthenticationErrorTimerState with _$AuthenticationErrorTimerState {
  const factory AuthenticationErrorTimerState.timerInitial({
    required Duration duration,
  }) = _TimerInitial;
  const factory AuthenticationErrorTimerState.timerRunInProgress({
    required Duration duration,
  }) = _TimerRunInProgress;
  const factory AuthenticationErrorTimerState.timerRunComplete({
    required int countTimerEnd,
  }) = _TimerRunComplete;
}
