import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/features/clubs/domain/entities/activity/activity.dart';
import 'package:fitt/features/clubs/domain/entities/batch/batch.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/clubs/domain/entities/time_slot/time_slot.dart';
import 'package:fitt/features/clubs/domain/use_cases/partner_club/partner_club_use_case.dart';
import 'package:fitt/features/payment/domain/blocs/payment_workout_button/payment_workout_button_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_cubit.freezed.dart';
part 'club_state.dart';

class ClubCubit extends Cubit<ClubState> with UserMixin {
  ClubCubit() : super(const _ClubStateLoading());

  final partnerClubUseCase = PartnerClubsUseCase();
  late List<TimeSlot> flatSlots;
  late _ClubStateLoaded clubState;
  late String slotUuid;
  late PartnerClub partnerClub;

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
      partnerClub = await partnerClubUseCase.getParternClub(clubUuid: clubUuid);
      final batches =
          await partnerClubUseCase.getClubBatches(clubUuid: clubUuid);
      flatSlots = _flattenSlots(partnerClub.activities!.first);
      clubState = _ClubStateLoaded(
        club: partnerClub,
        lastAvailableDateSelected: false,
        batches: batches,
      );
      selectActivity(clubState.club.activities!.first);
      emit(clubState);

      if (userSnapshot == null) {
        getIt<PaymentWorkoutButtonBloc>()
            .add(PaymentWorkoutButtonEvent.checkAvailablePayment(
          paymentAvailable: partnerClub.payAvailable,
          userHasFullData: UserExistEnum.none,
        ));
      } else if (!userSnapshot!.hasFullData) {
        getIt<PaymentWorkoutButtonBloc>()
            .add(PaymentWorkoutButtonEvent.checkAvailablePayment(
          paymentAvailable: partnerClub.payAvailable,
          userHasFullData: UserExistEnum.notFullData,
        ));
      } else {
        getIt<PaymentWorkoutButtonBloc>()
            .add(PaymentWorkoutButtonEvent.checkAvailablePayment(
          paymentAvailable: partnerClub.payAvailable,
          userHasFullData: UserExistEnum.fullData,
        ));
      }
    } on NetworkExceptions catch (e) {
      emit(_ClubStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  PartnerClub get club => partnerClub;

  TimeSlot? get selectedSlot {
    if (!clubState.dateSlots!.hasEnabledChildren ||
        !clubState.timeSlots!.hasEnabledChildren ||
        !clubState.durationSlots!.hasEnabledChildren) {
      return null;
    }

    final date = clubState.dateSlots!.enabledChildren.single.details;
    final time = clubState.timeSlots!.enabledChildren.single.details;
    final duration = clubState.durationSlots!.enabledChildren.single.details;

    final selectedActivity = clubState.selectedActivity;
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

    final resFiltered = res
        .asMap()
        .map((key, value) => MapEntry(value.startTime, value))
        .values
        .toList();

    return UnmodifiableListView<TimeSlot>(resFiltered);
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
                    (clubState.durationSlots?.hasEnabledChildren ?? false) &&
                        element.duration ==
                            clubState
                                .durationSlots!.enabledChildren.single.details,
              ),
        ),
      );
  }

  void selectActivity(Activity activity) {
    flatSlots = _flattenSlots(activity);

    final newState = clubState.copyWith(
      selectedActivity: activity,
      dateSlots: FilterGroup<bool, ToggledFilter<DateTime>>(
        _extractDateSlotsFromActivity(activity),
      ),
    );

    clubState = newState;

    emit(_ClubStateLoaded(
      club: clubState.club,
      batches: clubState.batches,
      dateSlots: newState.dateSlots,
      lastAvailableDateSelected: false,
    ));

    selectDateSlot(activity.dateSlots.first.date);
  }

  void selectDateSlot(DateTime date) {
    if (clubState.dateSlots!.hasEnabledChildren &&
        date.isAtSameMomentAs(
          clubState.dateSlots!.enabledChildren.single.details,
        )) {
      return;
    }

    final timesMap = _extractTimeSlotsForDate(date, flatSlots);

    final newState = clubState.copyWith(
      dateSlots: clubState.dateSlots!.reset().update(date, true),
      timeSlots: FilterGroup<bool, ToggledFilter<DateTime>>(timesMap),
      lastAvailableDateSelected:
          clubState.dateSlots!.children.last.details == date,
    );

    clubState = newState;

    emit(_ClubStateLoaded(
      club: clubState.club,
      batches: clubState.batches,
      dateSlots: clubState.dateSlots,
      selectedActivity: clubState.selectedActivity,
      lastAvailableDateSelected: clubState.lastAvailableDateSelected,
    ));

    selectTimeSlot(timesMap.keys.first);
  }

  void selectTimeSlot(DateTime time) {
    if (clubState.timeSlots!.hasEnabledChildren &&
        time.isAtSameMomentAs(
          clubState.timeSlots!.enabledChildren.single.details,
        )) {
      return;
    }

    final durationMap = _extractDurationsForTime(time, flatSlots);

    final newState = clubState.copyWith(
      timeSlots: clubState.timeSlots!.reset().update(time, true),
      durationSlots: FilterGroup<bool, ToggledFilter<Duration>>(durationMap),
    );

    clubState = newState;

    slotUuid = selectedSlot?.id != null ? selectedSlot!.id : flatSlots.first.id;

    emit(_ClubStateLoaded(
      club: clubState.club,
      dateSlots: clubState.dateSlots,
      timeSlots: clubState.timeSlots,
      selectedActivity: clubState.selectedActivity,
      lastAvailableDateSelected: clubState.lastAvailableDateSelected,
      batches: clubState.batches,
    ));

    selectDurationSlot(durationMap.keys.first);
  }

  void selectDurationSlot(Duration duration) {
    final selectedDuration =
        clubState.durationSlots!.reset().update(duration, true);

    final newState = clubState.copyWith(
      durationSlots: selectedDuration,
    );

    clubState = newState;

    emit(
      _ClubStateLoaded(
        club: clubState.club,
        durationSlots: clubState.durationSlots,
        dateSlots: clubState.dateSlots,
        timeSlots: clubState.timeSlots,
        selectedActivity: clubState.selectedActivity,
        lastAvailableDateSelected: clubState.lastAvailableDateSelected,
        batches: clubState.batches,
      ),
    );
  }
}
