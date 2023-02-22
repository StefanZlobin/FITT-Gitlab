import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/domain/entities/activity/activity.dart';
import 'package:fitt/domain/entities/batch/batch.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:fitt/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_cubit.freezed.dart';
part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> {
  ClubCubit() : super(const _ClubStateLoading());

  final partnerClubUseCase = PartnerClubsUseCase();
  late List<TimeSlot> flatSlots;
  late _ClubStateLoaded _clubState;
  late String slotUuid;

  Future<void> setFavorite({
    required bool favorite,
    required String clubUuid,
  }) async {
    try {
      !favorite
          ? await partnerClubUseCase.addClubToFavorites(clubUuid: clubUuid)
          : await partnerClubUseCase.removeClubToFavorites(clubUuid: clubUuid);
      await getPartnerClub(clubUuid: clubUuid);
    } on NetworkExceptions catch (e) {
      emit(_ClubStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> getPartnerClub({required String clubUuid}) async {
    try {
      final partnerClub =
          await partnerClubUseCase.getParternClub(clubUuid: clubUuid);
      final batches =
          await partnerClubUseCase.getClubBatches(clubUuid: clubUuid);
      flatSlots = _flattenSlots(partnerClub.activities!.first);
      _clubState = _ClubStateLoaded(
        club: partnerClub,
        lastAvailableDateSelected: false,
        batches: batches,
      );
      selectActivity(_clubState.club.activities!.first);
      emit(_clubState);
    } on NetworkExceptions catch (e) {
      emit(_ClubStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  TimeSlot? get selectedSlot {
    if (!_clubState.dateSlots!.hasEnabledChildren ||
        !_clubState.timeSlots!.hasEnabledChildren ||
        !_clubState.durationSlots!.hasEnabledChildren) {
      return null;
    }

    final date = _clubState.dateSlots!.enabledChildren.single.details;
    final time = _clubState.timeSlots!.enabledChildren.single.details;
    final duration = _clubState.durationSlots!.enabledChildren.single.details;

    final selectedActivity = _clubState.selectedActivity;
    if (selectedActivity == null) return null;
    final dSlots = selectedActivity.dateSlots;

    final workout = dSlots
        .singleWhereOrNull((slot) => DateTimeUtils.sameDay(slot.date, date))
        ?.timeSlots!
        .singleWhereOrNull((slot) =>
            DateTimeUtils.sameTime(slot.startTime, time) &&
            slot.duration == duration);
    return workout?.copyWith(
      duration: duration,
      startTime: DateTimeUtils.fromDateAndTime(date, time),
    );
  }

  List<TimeSlot> _flattenSlots(Activity activity) {
    final res = <TimeSlot>[];
    //final resFiltered = <TimeSlot>[];
    for (final date in activity.dateSlots) {
      for (final time in date.timeSlots!) {
        res.add(time.copyWith(
          startTime: DateTimeUtils.fromDateAndTime(date.date, time.startTime),
        ));
      }
    }
    //for (var i = 0; i < res.length; i++) {
    //  if (i == 0) continue;
    //  if (res[i].id != res[i - 1].id) resFiltered.add(res[i]);
    //}
    return UnmodifiableListView<TimeSlot>(res);
  }

  SplayTreeMap<DateTime, ToggledFilter<DateTime>> _extractDateSlotsFromActivity(
    Activity activity,
  ) {
    return SplayTreeMap<DateTime, ToggledFilter<DateTime>>()
      ..addAll(
        activity.dateSlots.groupFoldBy(
          (e) => e.date,
          (prev, e) => prev ?? ToggledFilter<DateTime>(details: e.date),
        ),
      );
  }

  SplayTreeMap<DateTime, ToggledFilter<DateTime>> _extractTimeSlotsForDate(
    DateTime date,
    Iterable<TimeSlot> source,
  ) {
    final res = SplayTreeMap<DateTime, ToggledFilter<DateTime>>()
      ..addAll(
        source
            //
            .where((e) => DateTimeUtils.sameDay(e.startTime, date))
            .groupFoldBy(
          (e) {
            //slotUuid = e.id;
            return e.startTime;
          },
          (previous, element) =>
              previous ?? ToggledFilter(details: element.startTime),
        ),
      );
    return res;
  }

  SplayTreeMap<Duration, ToggledFilter<Duration>> _extractDurationsForTime(
    DateTime time,
    Iterable<TimeSlot> source,
  ) {
    return SplayTreeMap<Duration, ToggledFilter<Duration>>()
      ..addAll(
        source
            //
            .where((e) =>
                DateTimeUtils.sameDay(e.startTime, time) &&
                DateTimeUtils.sameTime(e.startTime, time))
            .groupFoldBy(
          (e) {
            return e.duration;
          },
          (previous, element) =>
              previous ??
              ToggledFilter(
                details: element.duration,
                value:
                    (_clubState.durationSlots?.hasEnabledChildren ?? false) &&
                        element.duration ==
                            _clubState
                                .durationSlots!.enabledChildren.single.details,
              ),
        ),
      );
  }

  void selectActivity(Activity activity) {
    flatSlots = _flattenSlots(activity);

    final newState = _clubState.copyWith(
      selectedActivity: activity,
      dateSlots: FilterGroup<bool, ToggledFilter<DateTime>>(
        _extractDateSlotsFromActivity(activity),
      ),
    );

    _clubState = newState;

    emit(_ClubStateLoaded(
      club: _clubState.club,
      batches: _clubState.batches,
      dateSlots: newState.dateSlots,
      lastAvailableDateSelected: false,
    ));

    selectDateSlot(activity.dateSlots.first.date);
  }

  void selectDateSlot(DateTime date) {
    if (_clubState.dateSlots!.hasEnabledChildren &&
        date.isAtSameMomentAs(
            _clubState.dateSlots!.enabledChildren.single.details)) {
      return;
    }

    final timesMap = _extractTimeSlotsForDate(date, flatSlots);

    final newState = _clubState.copyWith(
      dateSlots: _clubState.dateSlots!.reset().update(date, true),
      timeSlots: FilterGroup<bool, ToggledFilter<DateTime>>(timesMap),
      lastAvailableDateSelected:
          _clubState.dateSlots!.children.last.details == date,
    );

    _clubState = newState;

    emit(_ClubStateLoaded(
      club: _clubState.club,
      batches: _clubState.batches,
      dateSlots: _clubState.dateSlots,
      selectedActivity: _clubState.selectedActivity,
      lastAvailableDateSelected: _clubState.lastAvailableDateSelected,
    ));

    selectTimeSlot(timesMap.keys.first);
  }

  void selectTimeSlot(DateTime time) {
    if (_clubState.timeSlots!.hasEnabledChildren &&
        time.isAtSameMomentAs(
            _clubState.timeSlots!.enabledChildren.single.details)) {
      return;
    }

    final durationMap = _extractDurationsForTime(time, flatSlots);

    final newState = _clubState.copyWith(
      timeSlots: _clubState.timeSlots!.reset().update(time, true),
      durationSlots: FilterGroup<bool, ToggledFilter<Duration>>(durationMap),
    );

    _clubState = newState;

    if (selectedSlot?.id != null) {
      slotUuid = selectedSlot!.id;
    } else {
      slotUuid = flatSlots.first.id;
    }

    emit(_ClubStateLoaded(
      club: _clubState.club,
      dateSlots: _clubState.dateSlots,
      timeSlots: _clubState.timeSlots,
      selectedActivity: _clubState.selectedActivity,
      lastAvailableDateSelected: _clubState.lastAvailableDateSelected,
      batches: _clubState.batches,
    ));

    selectDurationSlot(durationMap.keys.first);
  }

  void selectDurationSlot(Duration duration) {
    final selectedDuration =
        _clubState.durationSlots!.reset().update(duration, true);

    final newState = _clubState.copyWith(
      durationSlots: selectedDuration,
    );

    _clubState = newState;

    emit(
      _ClubStateLoaded(
        club: _clubState.club,
        durationSlots: _clubState.durationSlots,
        dateSlots: _clubState.dateSlots,
        timeSlots: _clubState.timeSlots,
        selectedActivity: _clubState.selectedActivity,
        lastAvailableDateSelected: _clubState.lastAvailableDateSelected,
        batches: _clubState.batches,
      ),
    );
  }
}
