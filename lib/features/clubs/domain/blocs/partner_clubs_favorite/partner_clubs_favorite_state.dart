part of 'partner_clubs_favorite_bloc.dart';

@freezed
class PartnerClubsFavoriteState with _$PartnerClubsFavoriteState {
  const factory PartnerClubsFavoriteState.initial() =
      _PartnerClubsFavoriteStateInitial;
  const factory PartnerClubsFavoriteState.loaded({
    required List<PartnerClub> clubs,
    required bool isFacilitiesUpdated,
  }) = _PartnerClubsFavoriteStateLoaded;
  const factory PartnerClubsFavoriteState.error({
    required String error,
  }) = _PartnerClubsFavoriteStateError;
}
