import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/time_slice_enum.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/use_cases/analytics/analytics_use_case.dart';
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
  }

  final analyticsUseCase = AnalyticsUseCase();
  _AnalyticsFilteringStateLoaded get stateLoaded => state.maybeMap(
        loaded: (value) => value,
        orElse: const _AnalyticsFilteringStateLoaded().copyWith,
      );

  void _onAnalyticsFilteringEventTimeSliceChanged(
    _AnalyticsFilteringEventTimeSliceChanged event,
    Emitter<AnalyticsFilteringState> emit,
  ) {
    analyticsUseCase.getAnalytics(
      analyticsFilters: AnalyticsFilters(
        timeSlice: event.timeSlice,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      ),
    );
    emit(stateLoaded.copyWith(timeSlice: event.timeSlice));
  }

  void _onAnalyticsFilteringEventSelectedClubsChanged(
    _AnalyticsFilteringEventSelectedClubsChanged event,
    Emitter<AnalyticsFilteringState> emit,
  ) {
    analyticsUseCase.getAnalytics(
      analyticsFilters: AnalyticsFilters(
        clubsUuid: event.clubsUuid,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      ),
    );
    emit(stateLoaded.copyWith(clubsUuid: event.clubsUuid));
  }
}
