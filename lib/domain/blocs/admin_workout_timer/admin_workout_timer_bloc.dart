import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/admin_workout/admin_workout.dart';
import 'package:fitt/domain/ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_workout_timer_bloc.freezed.dart';
part 'admin_workout_timer_event.dart';
part 'admin_workout_timer_state.dart';

class AdminWorkoutTimerBloc extends Bloc<AdminWorkoutTimerEvent, AdminWorkoutTimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  AdminWorkoutTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const _AdminWorkoutTimerStateTimerInitial()) {
    on<_AdminWorkoutTimerEventTimerStarted>(_onStarted);
    on<_AdminWorkoutTimerEventTimerTicked>(_onTicked);
    on<_AdminWorkoutTimerEventTimerComplete>(_onComplete);
  }

  void _onStarted(
    _AdminWorkoutTimerEventTimerStarted event,
    Emitter<AdminWorkoutTimerState> emit,
  ) {
    event.duration.isNegative
        ? emit(_AdminWorkoutTimerStateTimerRunInDanger(duration: event.duration))
        : emit(_AdminWorkoutTimerStateTimerRunInProgress(duration: event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: event.duration.inSeconds).listen(
          (duration) =>
              add(_AdminWorkoutTimerEventTimerTicked(duration: Duration(seconds: duration), workout: event.workout)),
        );
  }

  void _onTicked(
    _AdminWorkoutTimerEventTimerTicked event,
    Emitter<AdminWorkoutTimerState> emit,
  ) {
    emit(
      event.duration.isNegative
          ? _AdminWorkoutTimerStateTimerRunInDanger(duration: event.duration)
          : _AdminWorkoutTimerStateTimerRunInProgress(duration: event.duration),
    );
  }

  void _onComplete(
    _AdminWorkoutTimerEventTimerComplete event,
    Emitter<AdminWorkoutTimerState> emit,
  ) {
    _tickerSubscription?.pause();
    emit(const _AdminWorkoutTimerStateTimerRunComplete(duration: Duration()));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
