part of 'login_error_timer_bloc.dart';

@freezed
class LoginErrorTimerState with _$LoginErrorTimerState {
  const factory LoginErrorTimerState.timerInitial({
    required Duration duration,
  }) = _TimerInitial;
  const factory LoginErrorTimerState.timerRunInProgress({
    required Duration duration,
  }) = _TimerRunInProgress;
  const factory LoginErrorTimerState.timerRunComplete({
    required int countTimerEnd,
    required Duration repeatCallAfter,
  }) = _TimerRunComplete;
}
