part of 'club_filtering_bloc.dart';

@Freezed(equal: false)
class ClubFilteringState with _$ClubFilteringState {
  const factory ClubFilteringState.initial() = _ClubFilteringStateInitial;
  const factory ClubFilteringState.loaded({
    required ClubFilters clubFilters,
    @Default(false) bool isPriceUpdated,
    @Default(false) bool isFacilitiesUpdated,
  }) = _ClubFilteringStateLoaded;
  const factory ClubFilteringState.error({
    required String error,
  }) = _ClubFilteringStateError;
}
