import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/utils/functions/polygon.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/map/data/models/request/map/get_map_points_request_body.dart';
import 'package:fitt/features/map/data/source/remote_data_source/map_api_client/map_api_client.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:rxdart/rxdart.dart';

class MapRepositoryImpl implements MapRepository {
  MapRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = MapApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final MapApiClient _apiClient;

  final BehaviorSubject<List<MapPoint>> _mapPointsController =
      BehaviorSubject.seeded(<MapPoint>[], sync: true);
  void Function(List<MapPoint>) get updateMapPoints =>
      _mapPointsController.sink.add;
  @override
  Stream<List<MapPoint>> get mapPoints => _mapPointsController;

  final BehaviorSubject<gm.LatLngBounds?> _visibleRegionController =
      BehaviorSubject.seeded(null, sync: true);
  void Function(gm.LatLngBounds?) get updateVisibleRegion =>
      _visibleRegionController.sink.add;
  @override
  Stream<gm.LatLngBounds?> get visibleRegion => _visibleRegionController;

  @override
  Future<List<MapPoint>> getMapPoints({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  }) async {
    try {
      final mapPoints = await _apiClient.getMapPoints(GetMapPointsRequestBody(
        poligon: polygon(northeast, southwest),
        facilities: filters.getActiveFacilitiesIds,
        maxPrice: filters.maxPrice,
        minPrice: filters.minPrice,
      ));
      return mapPoints;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  void visibleRegionChanged({
    required LatLng northeast,
    required LatLng southwest,
  }) {
    updateVisibleRegion(gm.LatLngBounds(
      southwest: southwest.toGoogleMaps(),
      northeast: northeast.toGoogleMaps(),
    ));
  }

  @override
  FutureOr onDispose() {
    _mapPointsController.close();
    _visibleRegionController.close();
  }
}
