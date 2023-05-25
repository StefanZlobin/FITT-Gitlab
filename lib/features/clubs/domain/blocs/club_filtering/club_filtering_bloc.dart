// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';
import 'package:fitt/features/clubs/domain/entities/facility/facility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filtering_bloc.freezed.dart';
part 'club_filtering_event.dart';
part 'club_filtering_state.dart';

class ClubFilteringBloc extends Bloc<ClubFilteringEvent, ClubFilteringState> {
  ClubFilteringBloc() : super(const ClubFilteringState.initial()) {
    on<_ClubFilteringEventPriceChanged>(
      _onClubFilteringEventPriceChanged,
    );
    on<_ClubFilteringEventFacilitiesChanged>(
      _onClubFilteringEventFacilitiesChanged,
    );
    on<_ClubFilteringEventFiltersChanged>(
      _onClubFilteringEventFiltersChanged,
    );
    on<_ClubFilteringEventClearFilter>(
      _onClubFilteringEventClearFilter,
    );

    getIt<ResourceRepository>().filters.listen((ClubFilters filters) {
      final facilities = filters.facilities;
      _isFacilitiesUpdated = facilities?.containsValue(true) ?? false;

      add(ClubFilteringEvent.filtersChanged(filters: filters));
    });
  }

  _ClubFilteringStateLoaded get stateLoaded => state.maybeMap(
        loaded: (state) => state,
        orElse: () => _ClubFilteringStateLoaded(
          clubFilters: ClubFilters(),
        ),
      );

  // Сохранения диапозона цен, которые загрузились изначально
  final minP = getIt<ResourceRepository>().minPrice;
  final maxP = getIt<ResourceRepository>().maxPrice;

  bool _isPriceUpdated = false;
  bool _isFacilitiesUpdated = false;

  void _onClubFilteringEventPriceChanged(
    _ClubFilteringEventPriceChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    _isPriceUpdated = true;
    getIt<ResourceRepository>().priceChanged(price: event.price);
  }

  void _onClubFilteringEventFacilitiesChanged(
    _ClubFilteringEventFacilitiesChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    getIt<ResourceRepository>().facilitiesChanged(facility: event.facility);
  }

  void _onClubFilteringEventFiltersChanged(
    _ClubFilteringEventFiltersChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    emit(ClubFilteringState.loaded(
      clubFilters: event.filters,
      isFacilitiesUpdated: _isFacilitiesUpdated,
      isPriceUpdated: _isPriceUpdated,
    ));
  }

  void _onClubFilteringEventClearFilter(
    _ClubFilteringEventClearFilter event,
    Emitter<ClubFilteringState> emit,
  ) {
    _isFacilitiesUpdated = false;
    _isPriceUpdated = false;
    getIt<ResourceRepository>().getFacilities();
    getIt<ResourceRepository>().getPrice();
  }
}
