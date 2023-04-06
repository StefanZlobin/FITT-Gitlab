// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';
import 'package:fitt/domain/use_cases/analytics/analytics_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_kpi_bloc.freezed.dart';
part 'analytics_kpi_event.dart';
part 'analytics_kpi_state.dart';

class AnalyticsKPIBloc extends Bloc<AnalyticsKPIEvent, AnalyticsKPIState> {
  AnalyticsKPIBloc() : super(const _AnalyticsKPIStateInitial()) {
    on<_AnalyticsKPIEventStarted>(_onAnalyticsEventStarted);
    on<_AnalyticsKPIEventChanged>(_onAnalyticsEventKPIChanged);

    analyticsRepository.analytics.listen((KPI? kpi) {
      if (kpi != null) {
        add(AnalyticsKPIEvent.kpiChanged(kpi: kpi));
      }
    });
  }

  final analyticsUseCase = AnalyticsUseCase();
  final analyticsRepository = getIt<AnalyticsRepository>();

  void _onAnalyticsEventStarted(
    _AnalyticsKPIEventStarted event,
    Emitter<AnalyticsKPIState> emit,
  ) {
    analyticsUseCase.getAnalytics(analyticsFilters: event.analyticsFilters);
  }

  void _onAnalyticsEventKPIChanged(
    _AnalyticsKPIEventChanged event,
    Emitter<AnalyticsKPIState> emit,
  ) {
    emit(AnalyticsKPIState.loaded(kpi: event.kpi));
  }
}
