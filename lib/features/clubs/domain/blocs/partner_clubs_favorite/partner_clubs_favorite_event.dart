part of 'partner_clubs_favorite_bloc.dart';

@freezed
class PartnerClubsFavoriteEvent with _$PartnerClubsFavoriteEvent {
  const factory PartnerClubsFavoriteEvent.getPartnerClubs({
    required ClubFilters clubFilters,
    required ClubSortingEnum clubSortingEnum,
  }) = _PartnerClubsFavoriteEventGetPartnerClubs;

  const factory PartnerClubsFavoriteEvent.setPartnerClubs({
    required List<PartnerClub> clubs,
  }) = _PartnerClubsFavoriteEventSetPartnerClubs;

  const factory PartnerClubsFavoriteEvent.setFavorite({
    required int index,
    required bool favorite,
    required String clubUuid,
  }) = _PartnerClubsFavoriteEventSetFavorite;

  const factory PartnerClubsFavoriteEvent.resetFacilities() =
      _PartnerClubsFavoriteEventResetFacilities;
}
