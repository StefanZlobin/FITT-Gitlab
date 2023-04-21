part of 'staff_clubs_filters_bloc.dart';

@freezed
class StaffClubsFiltersState with _$StaffClubsFiltersState {
  const factory StaffClubsFiltersState.initial() =
      _StaffClubsFiltersStateInitial;
  const factory StaffClubsFiltersState.loaded({
    required Map<AdminClub, bool> adminClubs,
    @Default(<AdminClub>[]) List<AdminClub> selectedClubs,
  }) = _StaffClubsFiltersStateLoaded;
  const factory StaffClubsFiltersState.error({
    required String error,
  }) = _StaffClubsFiltersStateError;
}
