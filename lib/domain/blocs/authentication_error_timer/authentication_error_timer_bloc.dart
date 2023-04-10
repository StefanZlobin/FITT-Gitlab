import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_error_timer_bloc.freezed.dart';
part 'authentication_error_timer_event.dart';
part 'authentication_error_timer_state.dart';

class AuthenticationErrorTimerBloc
    extends Bloc<AuthenticationErrorTimerEvent, AuthenticationErrorTimerState> {
  final AuthRepository authRepository = getIt<AuthRepository>();

  Duration _repeatCallAfter = const Duration(minutes: 1);

  StreamSubscription<int>? _tickerSubscription;
  final Ticker _ticker;
  int countTimerEnd = 0;

  AuthenticationErrorTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const _TimerInitial(duration: Duration(minutes: 1))) {
    on<_SetTimerInitial>(_onSetInitial);
    on<_TimerStarted>(_onStarted);
    on<_TimerTicked>(_onTicked);

    authRepository.authenticationStatus
        .listen((AuthenticationStatusEnum authenticationStatus) {
      if (authenticationStatus == AuthenticationStatusEnum.loading) {
        if (stateInProgress is! _TimerRunInProgress) {
          add(AuthenticationErrorTimerEvent.timerStarted(
            duration: _repeatCallAfter,
          ));
        }
      } else if (authenticationStatus ==
          AuthenticationStatusEnum.unauthenticated) {
        if (stateInProgress is! _TimerRunInProgress) {
          _repeatCallAfter += const Duration(minutes: 5);
          add(AuthenticationErrorTimerEvent.setTimerInitial(
            duration: _repeatCallAfter,
          ));
        }
      }
    });
  }

  AuthenticationErrorTimerState get stateInProgress => state.map(
        timerRunInProgress: (value) => value,
        timerInitial: (value) => value,
        timerRunComplete: (value) => value,
      );

  void _onSetInitial(
    _SetTimerInitial event,
    Emitter<AuthenticationErrorTimerState> emit,
  ) {
    emit(_TimerInitial(duration: event.duration));
  }

  void _onStarted(
    _TimerStarted event,
    Emitter<AuthenticationErrorTimerState> emit,
  ) {
    emit(_TimerRunInProgress(duration: event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration.inSeconds)
        .listen((duration) => add(_TimerTicked(
              duration: Duration(seconds: duration),
            )));
  }

  void _onTicked(
    _TimerTicked event,
    Emitter<AuthenticationErrorTimerState> emit,
  ) {
    if (event.duration.inSeconds > 0) {
      emit(_TimerRunInProgress(duration: event.duration));
    } else {
      countTimerEnd += 1;
      emit(_TimerRunComplete(countTimerEnd: countTimerEnd));
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
