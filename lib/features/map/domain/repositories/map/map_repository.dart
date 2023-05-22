// ignore_for_file: prefer_mixin

import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;

abstract class MapRepository with Disposable {
  Future<List<MapPoint>> getMapPoints({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  });

  void visibleRegionChanged({
    required LatLng northeast,
    required LatLng southwest,
  });

  Stream<List<MapPoint>> get mapPoints;
  Stream<gm.LatLngBounds?> get visibleRegion;
}
