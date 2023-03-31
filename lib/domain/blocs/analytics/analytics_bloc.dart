import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';
import 'package:fitt/domain/use_cases/analytics/analytics_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_bloc.freezed.dart';
part 'analytics_event.dart';
part 'analytics_state.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  AnalyticsBloc() : super(const _AnalyticsStateInitial()) {
    on<_AnalyticsEventStarted>(_onAnalyticsEventStarted);
    on<_AnalyticsEventKPIChanged>(_onAnalyticsEventKPIChanged);

    analyticsRepository.analytics.listen((KPI? kpi) {
      if (kpi != null) {
        add(AnalyticsEvent.kpiChanged(kpi: kpi));
      }
    });
  }

  final analyticsUseCase = AnalyticsUseCase();
  final analyticsRepository = getIt<AnalyticsRepository>();

  void _onAnalyticsEventStarted(
    _AnalyticsEventStarted event,
    Emitter<AnalyticsState> emit,
  ) {
    analyticsUseCase.getAnalytics(analyticsFilters: event.analyticsFilters);
  }

  void _onAnalyticsEventKPIChanged(
    _AnalyticsEventKPIChanged event,
    Emitter<AnalyticsState> emit,
  ) {
    emit(AnalyticsState.loaded(kpi: event.kpi));
  }
}
