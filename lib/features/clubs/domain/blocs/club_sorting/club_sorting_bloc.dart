import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_sorting_bloc.freezed.dart';
part 'club_sorting_event.dart';
part 'club_sorting_state.dart';

class ClubSortingBloc extends Bloc<ClubSortingEvent, ClubSortingState> {
  ClubSortingBloc() : super(const _ClubSortingStateInitial()) {
    on<_ClubSortingEventRefreshState>(_onClubSortingEventRefreshState);
    on<_ClubSortingEventSortingChanged>(_onClubSortingEventSortingChanged);

    getIt<ResourceRepository>()
        .clubSortingItems
        .listen((Map<ClubSortingEnum, bool> sortingItems) {
      add(ClubSortingEvent.refreshState(clubSortingItems: sortingItems));
    });
  }

  void _onClubSortingEventRefreshState(
    _ClubSortingEventRefreshState event,
    Emitter<ClubSortingState> emit,
  ) {
    emit(ClubSortingState.loaded(sortingItems: event.clubSortingItems));
  }

  void _onClubSortingEventSortingChanged(
    _ClubSortingEventSortingChanged event,
    Emitter<ClubSortingState> emit,
  ) {
    getIt<ResourceRepository>().clubSortingItemsChanged(
      clubSortingEnum: event.clubSortingEnum,
    );
  }
}
