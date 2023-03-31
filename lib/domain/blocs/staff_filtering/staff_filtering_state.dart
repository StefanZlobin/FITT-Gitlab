part of 'staff_filtering_bloc.dart';

@freezed
class StaffFilteringState with _$StaffFilteringState {
  const factory StaffFilteringState.initial() = _StaffFilteringStateInitial;

  const factory StaffFilteringState.loaded({
    required Map<bool, AdminClub>? adminClubs,
    required Duration? timeSlice,
  }) = _StaffFilteringStateLoaded;
}
