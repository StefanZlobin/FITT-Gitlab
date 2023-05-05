import 'package:dio/dio.dart';
import 'package:fitt/features/map/data/models/request/map/get_map_points_request_body.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:retrofit/retrofit.dart';

part 'map_api_client.g.dart';

@RestApi()
abstract class MapApiClient {
  factory MapApiClient(Dio dio, {String? baseUrl}) = _MapApiClient;

  @GET('user/search')
  Future<List<MapPoint>> getMapPoints(
    @Queries() GetMapPointsRequestBody request,
  );
}
