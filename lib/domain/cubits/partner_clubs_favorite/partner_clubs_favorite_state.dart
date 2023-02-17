part of 'partner_clubs_favorite_cubit.dart';

@Freezed(
  equal: false,
  copyWith: true,
  makeCollectionsUnmodifiable: false,
)
class PartnerClubsFavoriteState with _$PartnerClubsFavoriteState {
  const factory PartnerClubsFavoriteState.initial() =
      _PartnerClubsFavoriteStateInitial;
  const factory PartnerClubsFavoriteState.loaded({
    required List<PartnerClub> clubs,
    @Default(false) bool isFiltersUpdated,
  }) = _PartnerClubsFavoriteStateLoaded;
  const factory PartnerClubsFavoriteState.error({required String error}) =
      _PartnerClubsFavoriteStateError;
}
