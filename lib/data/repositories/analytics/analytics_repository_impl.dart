// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/analytics/get_analytics_request_body.dart';
import 'package:fitt/data/source/remote_data_source/analytics_api_client/analytics_api_client.dart';
import 'package:fitt/domain/entities/filters/analytics_filters.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:fitt/domain/entities/workouts_chart_data/workouts_chart_data.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/analytics/analytics_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  AnalyticsRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = AnalyticsApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final AnalyticsApiClient _apiClient;

  final BehaviorSubject<KPI?> _analyticsController =
      BehaviorSubject(sync: true);
  void Function(KPI?) get updateAnalytics => _analyticsController.sink.add;
  @override
  Stream<KPI?> get analytics => _analyticsController;

  final BehaviorSubject<WorkoutsChartData?> _workoutsChartDataController =
      BehaviorSubject(sync: true);
  void Function(WorkoutsChartData?) get updateworkoutsChartData =>
      _workoutsChartDataController.sink.add;
  @override
  Stream<WorkoutsChartData?> get workoutsChartData =>
      _workoutsChartDataController;

  @override
  Future<KPI> getClubsKPI({required AnalyticsFilters analyticsFilters}) async {
    try {
      final analytics = await _apiClient.getClubsKPI(
        GetAnalyticsRequestBody(
          timeSlice: analyticsFilters.timeSlice
              .timeSliceToField(analyticsFilters.timeSlice),
          clubsUuid: analyticsFilters.clubsUuid,
          startDate: analyticsFilters.startDate,
          endDate: analyticsFilters.endDate,
        ),
      );
      updateAnalytics(analytics);
      return analytics;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<WorkoutsChartData> getWorkoutsChartData({
    required AnalyticsFilters analyticsFilters,
  }) async {
    try {
      final workoutsChartData = await _apiClient.getWorkoutsChartData(
        GetAnalyticsRequestBody(
          timeSlice: analyticsFilters.timeSlice
              .timeSliceToField(analyticsFilters.timeSlice),
          clubsUuid: analyticsFilters.clubsUuid,
          startDate: analyticsFilters.startDate,
          endDate: analyticsFilters.endDate,
        ),
      );
      updateworkoutsChartData(workoutsChartData);
      return workoutsChartData;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  void dispose() {
    _analyticsController.close();
    _workoutsChartDataController.close();
  }
}
