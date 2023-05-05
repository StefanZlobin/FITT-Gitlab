import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/ticker.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_error_timer_bloc.freezed.dart';
part 'login_error_timer_event.dart';
part 'login_error_timer_state.dart';

class LoginErrorTimerBloc
    extends Bloc<LoginErrorTimerEvent, LoginErrorTimerState> {
  final authenticationRepository = getIt<AuthenticationRepository>();

  Duration _repeatCallAfter = const Duration(minutes: 1);

  StreamSubscription<int>? _tickerSubscription;
  final Ticker _ticker;
  int countTimerEnd = 0;

  LoginErrorTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const _TimerInitial(duration: Duration(minutes: 1))) {
    on<_SetTimerInitial>(_onSetInitial);
    on<_TimerStarted>(_onStarted);
    on<_TimerTicked>(_onTicked);

    authenticationRepository.authenticationStatus
        .listen((AuthenticationStatusEnum authenticationStatus) {
      if (authenticationStatus == AuthenticationStatusEnum.loading) {
        if (stateInProgress is! _TimerRunInProgress) {
          add(LoginErrorTimerEvent.timerStarted(
            duration: _repeatCallAfter,
          ));
        }
      } else if (authenticationStatus ==
          AuthenticationStatusEnum.unauthenticated) {
        if (countTimerEnd != 0) {
          _repeatCallAfter += const Duration(minutes: 1);
        }
        if (stateInProgress is! _TimerRunInProgress) {
          add(LoginErrorTimerEvent.setTimerInitial(
            duration: _repeatCallAfter,
          ));
        }
      }
    });
  }

  LoginErrorTimerState get stateInProgress => state.map(
        timerRunInProgress: (value) => value,
        timerInitial: (value) => value,
        timerRunComplete: (value) => value,
      );

  void _onSetInitial(
    _SetTimerInitial event,
    Emitter<LoginErrorTimerState> emit,
  ) {
    emit(_TimerInitial(duration: event.duration));
  }

  void _onStarted(
    _TimerStarted event,
    Emitter<LoginErrorTimerState> emit,
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
    Emitter<LoginErrorTimerState> emit,
  ) {
    if (event.duration.inSeconds > 0) {
      emit(_TimerRunInProgress(duration: event.duration));
    } else {
      countTimerEnd += 1;
      if (countTimerEnd > 2) {
        _repeatCallAfter = const Duration(minutes: 30);
      } else if (countTimerEnd >= 1) {
        _repeatCallAfter = const Duration(minutes: 5);
      } else {
        _repeatCallAfter = const Duration(minutes: 1);
      }
      emit(_TimerRunComplete(
        countTimerEnd: countTimerEnd,
        repeatCallAfter: _repeatCallAfter,
      ));
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
