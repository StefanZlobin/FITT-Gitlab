part of 'staff_clubs_filters_bloc.dart';

@freezed
class StaffClubsFiltersEvent with _$StaffClubsFiltersEvent {
  const factory StaffClubsFiltersEvent.selectClub({
    required AdminClub adminClub,
    required bool isAdminWorkoutsPage,
  }) = _StaffClubsFiltersEventSelectClub;

  const factory StaffClubsFiltersEvent.clearSelectedClubs() =
      _StaffClubsFiltersEventClearSelectedClubs;
}
