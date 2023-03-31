import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/analytics/get_analytics_request_body.dart';
import 'package:fitt/domain/entities/kpi/kpi.dart';
import 'package:retrofit/retrofit.dart';

part 'analytics_api_client.g.dart';

@RestApi()
abstract class AnalyticsApiClient {
  factory AnalyticsApiClient(Dio dio, {String? baseUrl}) = _AnalyticsApiClient;

  @GET('staff/clubs-analysis/dashboard/')
  Future<KPI> getAnalytics(@Queries() GetAnalyticsRequestBody request);
}
