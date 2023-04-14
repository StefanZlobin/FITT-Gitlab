// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:clock/clock.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/staff_clubs_filters/staff_clubs_filters_bloc.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/use_cases/analytics/analytics_use_case.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_filtering_bloc.freezed.dart';
part 'analytics_filtering_event.dart';
part 'analytics_filtering_state.dart';

class AnalyticsFilteringBloc
    extends Bloc<AnalyticsFilteringEvent, AnalyticsFilteringState> {
  AnalyticsFilteringBloc() : super(const AnalyticsFilteringState.initial()) {
    on<_AnalyticsFilteringEventTimeSliceChanged>(
      _onAnalyticsFilteringEventTimeSliceChanged,
    );
    on<_AnalyticsFilteringEventSelectedClubsChanged>(
      _onAnalyticsFilteringEventSelectedClubsChanged,
    );
    on<_AnalyticsFilteringEventDateRangeChanged>(
      _onAnalyticsFilteringEventDateRangeChanged,
    );

    getIt<StaffClubsFiltersBloc>()
        .selectedAdminClub
        .listen((AdminClub? adminClub) {
      if (adminClub != null) {
        add(AnalyticsFilteringEvent.selectedClubsChanged(
          clubUuidSelected: adminClub.uuid!,
        ));
      }
    });
  }

  final analyticsUseCase = AnalyticsUseCase();

  _AnalyticsFilteringStateLoaded get stateLoaded => state.maybeMap(
        loaded: (value) => value,
        orElse: () => _AnalyticsFilteringStateLoaded(
          startDateRange: DateTime.now(),
          endDateRange: DateTime.now(),
          selectedDate: DateTime.now(),
        ),
      );

  void _onAnalyticsFilteringEventTimeSliceChanged(
    _AnalyticsFilteringEventTimeSliceChanged event,
    Emitter<AnalyticsFilteringState> emit,
  ) {
    emit(stateLoaded.copyWith(timeSlice: event.timeSlice));
    add(
      AnalyticsFilteringEvent.dateRangeChanged(
        timeSlice: event.timeSlice,
        selectedDate: clock.now(),
      ),
    );

    _onRefreshData(stateLoaded);
  }

  void _onAnalyticsFilteringEventSelectedClubsChanged(
    _AnalyticsFilteringEventSelectedClubsChanged event,
    Emitter<AnalyticsFilteringState> emit,
  ) {
    final clubsUuid = {...stateLoaded.clubsUuid ?? {}};
    clubsUuid[event.clubUuidSelected] =
        !(clubsUuid[event.clubUuidSelected] ?? false);

    emit(stateLoaded.copyWith(clubsUuid: clubsUuid));

    _onRefreshData(stateLoaded);
  }

  void _onAnalyticsFilteringEventDateRangeChanged(
    _AnalyticsFilteringEventDateRangeChanged event,
    Emitter<AnalyticsFilteringState> emit,
  ) {
    final newState = stateLoaded.copyWith(
      startDateRange: defenitionDateRange(
        event.timeSlice,
        event.selectedDate,
      ).start,
      endDateRange: defenitionDateRange(
        event.timeSlice,
        event.selectedDate,
      ).end,
      selectedDate: event.selectedDate,
    );

    emit(newState);

    _onRefreshData(stateLoaded);
  }

  DateTimeRange defenitionDateRange(
    TimeSliceEnum timeSlice,
    DateTime date,
  ) {
    switch (timeSlice) {
      case TimeSliceEnum.day:
        return DateTimeRange(start: date, end: date);
      case TimeSliceEnum.week:
        return DateTimeRange(
          start: _defWeekRange(date).start,
          end: _defWeekRange(date).end,
        );
      case TimeSliceEnum.month:
        return DateTimeRange(
          start: _defMonthRange(date.month).start,
          end: _defMonthRange(date.month).end,
        );
      case TimeSliceEnum.year:
        return DateTimeRange(
          start: DateTime(date.year - 1),
          end: DateTime(date.year),
        );
    }
  }

  DateTimeRange _defMonthRange(int monthNumber) {
    final daysCount =
        DateTime(stateLoaded.selectedDate.year, monthNumber, 0).day;
    return DateTimeRange(
      start: DateTime(stateLoaded.selectedDate.year, monthNumber),
      end: DateTime(
        stateLoaded.selectedDate.year,
        monthNumber,
        daysCount,
      ),
    );
  }

  DateTimeRange _defWeekRange(DateTime date) {
    DateTimeRange output = DateTimeRange(start: clock.now(), end: clock.now());
    switch (date.weekday) {
      case 1:
        return output = DateTimeRange(
          start: date,
          end: date.add(
            const Duration(days: 6),
          ),
        );
      case 2:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 1)),
          end: date.add(
            const Duration(days: 5),
          ),
        );
      case 3:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 2)),
          end: date.add(
            const Duration(days: 4),
          ),
        );
      case 4:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 3)),
          end: date.add(
            const Duration(days: 3),
          ),
        );
      case 5:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 4)),
          end: date.add(
            const Duration(days: 2),
          ),
        );
      case 6:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 5)),
          end: date.add(
            const Duration(days: 1),
          ),
        );
      case 7:
        return output = DateTimeRange(
          start: date.subtract(const Duration(days: 6)),
          end: date,
        );
    }
    return output;
  }

  void _onRefreshData(_AnalyticsFilteringStateLoaded stateLoaded) {
    analyticsUseCase.getAnalytics(
      analyticsFilters: AnalyticsFilters(
        clubsUuid: stateLoaded.clubsUuid?.entries
                .where((e) => e.value)
                .map((e) => e.key)
                .toList() ??
            [],
        timeSlice: stateLoaded.timeSlice,
        startDate: stateLoaded.startDateRange,
        endDate: stateLoaded.endDateRange,
      ),
    );
  }

  int countDaysForAddOrSubtract(DateTime selectedDay, TimeSliceEnum timeSlice) {
    int countDays = 0;
    switch (timeSlice) {
      case TimeSliceEnum.day:
        countDays = 1;
        break;
      case TimeSliceEnum.week:
        countDays = 7;
        break;
      case TimeSliceEnum.month:
        countDays = DateTime(selectedDay.year, selectedDay.month, 0).day;
        break;
      case TimeSliceEnum.year:
        for (var i = 1; i <= 12; i++) {
          countDays += DateTime(selectedDay.year, i, 0).day;
        }
        break;
    }
    return countDays;
  }

  bool isPossibleAddDate(DateTime selectedDate) {
    return selectedDate.isBefore(clock.now());
  }
}
