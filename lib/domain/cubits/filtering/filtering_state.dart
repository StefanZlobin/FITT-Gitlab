part of 'filtering_cubit.dart';

@Freezed(equal: false)
class FilteringState with _$FilteringState {
  const factory FilteringState.initial() = _FilteringStateInitial;
  const factory FilteringState.loaded({
    required ClubFilters filters,
    required Map<Facility, bool> selectedFacilities,
    @Default(0) int? minPriceStart,
    @Default(1240) int? maxPriceEnd,
    @Default(false) bool isPriceUpdate,
    List<Facility>? activeFacilitiesList,
  }) = _FilteringStateLoaded;
  const factory FilteringState.error({required String error}) = _FilteringStateError;
}
