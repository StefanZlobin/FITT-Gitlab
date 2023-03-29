part of 'admin_clubs_cubit.dart';

@freezed
class AdminClubsState with _$AdminClubsState {
  const factory AdminClubsState.initial() = _AdminClubsStateInitial;
  const factory AdminClubsState.loaded({
    required List<AdminClub> adminClubs,
    required String nameOfOrganization,
  }) = _AdminClubsStateLoaded;
  const factory AdminClubsState.error({required String error}) =
      _AdminClubsStateError;
}
