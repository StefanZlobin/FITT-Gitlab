part of 'partner_clubs_cubit.dart';

@freezed
class PartnerClubsState with _$PartnerClubsState {
  //const factory PartnerClubsState.initial() = _PartnerClubsStateInitial;
  const factory PartnerClubsState.loading() = _PartnerClubsStateLoading;
  const factory PartnerClubsState.loaded({required List<PartnerClub> partnerClubs}) = _PartnerClubsStateLoaded;
  const factory PartnerClubsState.error({required String error}) = _PartnerClubsStateError;
}
