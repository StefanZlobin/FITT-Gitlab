// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff_filtering_bloc.freezed.dart';
part 'staff_filtering_event.dart';
part 'staff_filtering_state.dart';

class StaffFilteringBloc
    extends Bloc<StaffFilteringEvent, StaffFilteringState> {
  StaffFilteringBloc() : super(const _StaffFilteringStateInitial()) {
    on<_StaffFilteringEventClubSelected>(
      _onStaffFilteringEventClubSelected,
    );
    on<_StaffFilteringEventDurationUpdated>(
      _onStaffFilteringEventDurationUpdated,
    );
  }

  _StaffFilteringStateLoaded get stateLoaded => state.maybeMap(
        loaded: (value) => value,
        orElse: const _StaffFilteringStateLoaded(
          adminClubs: {},
          timeSlice: Duration(days: 7),
        ).copyWith,
      );

  void _onStaffFilteringEventClubSelected(
    _StaffFilteringEventClubSelected event,
    Emitter<StaffFilteringState> emit,
    // ignore: no-empty-block
  ) {}

  void _onStaffFilteringEventDurationUpdated(
    _StaffFilteringEventDurationUpdated event,
    Emitter<StaffFilteringState> emit,
    // ignore: no-empty-block
  ) {}
}
