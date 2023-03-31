part of 'staff_filtering_bloc.dart';

@freezed
class StaffFilteringEvent with _$StaffFilteringEvent {
  const factory StaffFilteringEvent.clubSelected() =
      _StaffFilteringEventClubSelected;
  const factory StaffFilteringEvent.durationUpdated({
    required DateTime startDateForKPIShow,
  }) = _StaffFilteringEventDurationUpdated;
}
