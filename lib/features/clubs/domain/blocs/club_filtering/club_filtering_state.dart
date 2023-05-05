part of 'club_filtering_bloc.dart';

@Freezed(equal: false)
class ClubFilteringState with _$ClubFilteringState {
  const factory ClubFilteringState.initial() = _Initial;
  const factory ClubFilteringState.loaded({
    Map<Facility, bool>? selectedFacilities,
    Price? selectedPrice,
    @Default(false) bool isPriceUpdated,
    @Default(false) bool isFacilitiesUpdated,
  }) = _ClubFilteringStateLoaded;
  const factory ClubFilteringState.error({
    required String error,
  }) = _ClubFilteringStateError;
}
