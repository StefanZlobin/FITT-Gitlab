import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/sorting/sorting_cubit.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtering_cubit.freezed.dart';
part 'filtering_state.dart';

class FilteringCubit extends Cubit<FilteringState> {
  FilteringCubit() : super(const FilteringState.initial());

  late _FilteringStateLoaded _filteringState;
  final selectedFacilities = <Facility, bool>{};
  final sortingCubit = getIt<SortingCubit>();

  List<Facility>? activeFavilitiesIndex;

  void setFilters({required ClubFilters filters}) {
    if (selectedFacilities.isEmpty) {
      for (final facility in filters.facilities!) {
        if (!selectedFacilities.containsKey(facility)) {
          selectedFacilities[facility] = false;
        }
      }
      selectedFacilities.removeWhere((key, value) => !filters.facilities!.contains(key));
    }

    _filteringState = _FilteringStateLoaded(
      filters: filters,
      selectedFacilities: selectedFacilities,
      minPriceStart: filters.minPrice,
      maxPriceEnd: filters.maxPrice,
    );
    emit(
      FilteringState.loaded(
        filters: _filteringState.filters,
        selectedFacilities: _filteringState.selectedFacilities,
        minPriceStart: _filteringState.minPriceStart,
        maxPriceEnd: _filteringState.maxPriceEnd,
      ),
    );
  }

  void selectFacility({
    required Facility facility,
    required ClubFilters filters,
  }) {
    selectedFacilities[facility] = !selectedFacilities[facility]!;

    final newState = _filteringState.copyWith(
      filters: filters,
      selectedFacilities: selectedFacilities,
    );

    activeFavilitiesIndex =
        selectedFacilities.entries.where((element) => element.value).map((e) => e.key).map((e) => e).toList();

    final activeFacilitiesList =
        selectedFacilities.entries.where((element) => element.value).map((e) => e.key).map((e) => e).toList();

    emit(
      _FilteringStateLoaded(
        filters: newState.filters,
        minPriceStart: newState.minPriceStart,
        maxPriceEnd: newState.maxPriceEnd,
        selectedFacilities: newState.selectedFacilities,
        activeFacilitiesList: activeFacilitiesList,
      ),
    );
  }

  void updatePrice({required RangeValues price}) {
    final activeFacilitiesList =
        selectedFacilities.entries.where((element) => element.value).map((e) => e.key).map((e) => e).toList();

    final newState = _filteringState.copyWith(
      filters: _filteringState.filters.copyWith(
        minPrice: price.start.toInt(),
        maxPrice: price.end.toInt(),
      ),
      selectedFacilities: selectedFacilities,
      activeFacilitiesList: activeFacilitiesList,
      isPriceUpdate: true,
    );

    emit(
      _FilteringStateLoaded(
        filters: newState.filters,
        minPriceStart: newState.minPriceStart,
        maxPriceEnd: newState.maxPriceEnd,
        selectedFacilities: newState.selectedFacilities,
        activeFacilitiesList: newState.activeFacilitiesList,
        isPriceUpdate: true,
      ),
    );
  }

  void resetFilters() {
    for (final facility in selectedFacilities.keys) {
      selectedFacilities[facility] = false;
    }

    activeFavilitiesIndex = [];

    _filteringState = _FilteringStateLoaded(
      filters: ClubFilters(
        facilities: [],
        minPrice: _filteringState.minPriceStart,
        maxPrice: _filteringState.maxPriceEnd,
      ),
      selectedFacilities: selectedFacilities,
      activeFacilitiesList: [],
      minPriceStart: _filteringState.minPriceStart,
      maxPriceEnd: _filteringState.maxPriceEnd,
      isPriceUpdate: false,
    );

    emit(_filteringState);
  }
}
