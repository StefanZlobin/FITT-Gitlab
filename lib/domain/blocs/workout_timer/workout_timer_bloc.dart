import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/workout_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/workout/workout_cubit.dart';
import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:fitt/domain/ticker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_timer_bloc.freezed.dart';
part 'workout_timer_event.dart';
part 'workout_timer_state.dart';

class WorkoutTimerBloc extends Bloc<WorkoutTimerEvent, WorkoutTimerState> {
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

  WorkoutTimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const _WorkoutTimerStateTimerInitial()) {
    on<_WorkoutTimerEventTimerStarted>(_onStarted);
    on<_WorkoutTimerEventTimerTicked>(_onTicked);
    on<_WorkoutTimerEventTimerComplete>(_onComplete);
  }

  void _onStarted(
    _WorkoutTimerEventTimerStarted event,
    Emitter<WorkoutTimerState> emit,
  ) {
    event.duration.isNegative
        ? emit(_WorkoutTimerStateTimerRunInDanger(duration: event.duration))
        : emit(_WorkoutTimerStateTimerRunInProgress(duration: event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: event.duration.inSeconds).listen(
          (duration) => add(_WorkoutTimerEventTimerTicked(
              duration: Duration(seconds: duration), workout: event.workout)),
        );
  }

  void _onTicked(
    _WorkoutTimerEventTimerTicked event,
    Emitter<WorkoutTimerState> emit,
  ) {
    if (event.workout.canStartTime ==
        DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          DateTime.now().hour,
          DateTime.now().minute,
          DateTime.now().second,
        )) {
      //getIt<WorkoutsCubit>().getWorkouts();
      getIt<WorkoutCubit>().getWorkout(workoutUuid: event.workout.uuid);
    }
    if (event.workout.status == WorkoutStatusEnum.started &&
        event.workout.endTime.isBefore(DateTime.now())) {
      return emit(_WorkoutTimerStateTimerRunInDanger(duration: event.duration));
    }

    emit(
      event.duration.isNegative
          ? _WorkoutTimerStateTimerRunInDanger(duration: event.duration)
          : _WorkoutTimerStateTimerRunInProgress(duration: event.duration),
    );
  }

  void _onComplete(
    _WorkoutTimerEventTimerComplete event,
    Emitter<WorkoutTimerState> emit,
  ) {
    _tickerSubscription?.pause();
    emit(const _WorkoutTimerStateTimerRunComplete(duration: Duration()));
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
