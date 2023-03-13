part of 'admin_club_cubit.dart';

@freezed
class AdminClubState with _$AdminClubState {
  const factory AdminClubState.initial() = _AdminClubStateInitial;
  const factory AdminClubState.loaded({required AdminClub adminClub}) = _AdminClubStateLoaded;
  const factory AdminClubState.error({required String error}) = _AdminClubStateError;
}
