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
    on<_ClubFilteringEventRefreshState>(
      _onClubFilteringEventRefreshState,
    );
    on<_ClubFilteringEventClearFilter>(
      _onClubFilteringEventClearFilter,
    );
    on<_ClubFilteringEventFiltersChanged>(
      _onClubFilteringEventFiltersChanged,
    );

    getIt<ResourceRepository>().filters.listen((ClubFilters filters) {
      add(ClubFilteringEvent.refreshState(
        facilities: filters.facilities,
        price: Price(minPrice: filters.minPrice, maxPrice: filters.maxPrice),
      ));
    });
  }

  _ClubFilteringStateLoaded get stateLoaded => state.maybeMap(
        loaded: (state) => state,
        orElse: () => const _ClubFilteringStateLoaded(
          selectedFacilities: {},
        ),
      );

  void _onClubFilteringEventFiltersChanged(
    _ClubFilteringEventFiltersChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    getIt<ResourceRepository>().filtersChanged(filters: event.filters);
  }

  void _onClubFilteringEventPriceChanged(
    _ClubFilteringEventPriceChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    getIt<ResourceRepository>().priceChanged(price: event.price);
  }

  void _onClubFilteringEventFacilitiesChanged(
    _ClubFilteringEventFacilitiesChanged event,
    Emitter<ClubFilteringState> emit,
  ) {
    getIt<ResourceRepository>().facilitiesChanged(facility: event.facility);
  }

  void _onClubFilteringEventRefreshState(
    _ClubFilteringEventRefreshState event,
    Emitter<ClubFilteringState> emit,
  ) {
    final isPriceUpdated = getIt<ResourceRepository>().minPrice !=
            (event.price?.minPrice ?? stateLoaded.selectedPrice?.minPrice) ||
        getIt<ResourceRepository>().maxPrice !=
            (event.price?.maxPrice ?? stateLoaded.selectedPrice?.maxPrice);
    final isFacilitiesUpdated = event.facilities?.containsValue(true) ??
        stateLoaded.selectedFacilities?.containsValue(true) ??
        false;

    emit(
      ClubFilteringState.loaded(
        selectedFacilities: event.facilities ?? stateLoaded.selectedFacilities,
        selectedPrice: event.price ?? stateLoaded.selectedPrice,
        isPriceUpdated: isPriceUpdated,
        isFacilitiesUpdated: isFacilitiesUpdated,
      ),
    );
  }

  void _onClubFilteringEventClearFilter(
    _ClubFilteringEventClearFilter event,
    Emitter<ClubFilteringState> emit,
  ) {
    getIt<ResourceRepository>().getFacilities();
    getIt<ResourceRepository>().getPrice();
  }
}
