import 'package:dio/dio.dart';
import 'package:fitt/core/utils/functions/polygon.dart';
import 'package:fitt/data/models/request/map/get_map_points_request_body.dart';
import 'package:fitt/data/source/remote_data_source/map_api_client/map_api_client.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/domain/entities/map_point/map_point.dart';
import 'package:fitt/domain/repositories/map/map_repository.dart';

class MapRepositoryImpl implements MapRepository {
  MapRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = MapApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final MapApiClient _apiClient;

  @override
  Future<List<MapPoint>> getMapPoints({
    ClubFilters filters = const ClubFilters(favorite: false),
    required LatLng northeast,
    required LatLng southwest,
  }) async {
    try {
      final mapPoints = await _apiClient.getMapPoints(GetMapPointsRequestBody(
        poligon: polygon(northeast, southwest),
        facilities: filters.facilities?.map((e) => e.id).toList() ?? [],
        maxPrice: filters.maxPrice,
        minPrice: filters.minPrice,
      ));
      return mapPoints;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
