import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/domain/entities/map_point/map_point.dart';

abstract class MapRepository {
  Future<List<MapPoint>> getMapPoints({
    ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  });
}
