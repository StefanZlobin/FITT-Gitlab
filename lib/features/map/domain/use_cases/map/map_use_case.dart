import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';

class MapUseCase {
  final mapRepository = getIt<MapRepository>();

  Future<List<MapPoint>> getMapPoints({
    ClubFilters filters = const ClubFilters(favorite: false),
    required LatLng northeast,
    required LatLng southwest,
  }) async {
    final mapPoints = await mapRepository.getMapPoints(
      filters: filters,
      northeast: northeast,
      southwest: southwest,
    );
    return mapPoints;
  }
}
