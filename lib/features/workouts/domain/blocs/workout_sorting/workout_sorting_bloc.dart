import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/workout_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_sorting_bloc.freezed.dart';
part 'workout_sorting_event.dart';
part 'workout_sorting_state.dart';

class WorkoutSortingBloc
    extends Bloc<WorkoutSortingEvent, WorkoutSortingState> {
  WorkoutSortingBloc() : super(const WorkoutSortingState.initial()) {
    on<_WorkoutSortingEventSortingChanged>(
      _onWorkoutSortingEventSortingChanged,
    );
    on<_WorkoutSortingEventRefreshState>(
      _onWorkoutSortingEventRefreshState,
    );

    getIt<ResourceRepository>()
        .workoutSortingItems
        .listen((Map<WorkoutSortingEnum, bool> sortingItems) {
      add(WorkoutSortingEvent.refreshState(
        sortingItems: sortingItems,
      ));
    });
  }

  void _onWorkoutSortingEventSortingChanged(
    _WorkoutSortingEventSortingChanged event,
    Emitter<WorkoutSortingState> emit,
  ) {
    getIt<ResourceRepository>().workoutSortingItemsChanged(
      workoutSortingEnum: event.sortingItem,
    );
  }

  void _onWorkoutSortingEventRefreshState(
    _WorkoutSortingEventRefreshState event,
    Emitter<WorkoutSortingState> emit,
  ) {
    emit(WorkoutSortingState.loaded(
      sortingItems: event.sortingItems,
    ));
  }
}
