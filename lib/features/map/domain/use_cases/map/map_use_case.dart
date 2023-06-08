import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/map_points_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/clubs/domain/repositories/partner_club/partner_club_repository.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point_data.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';

class MapUseCase {
  final mapRepository = getIt<MapRepository>();
  final clubRepository = getIt<PartnerClubRepository>();

  Future<List<MapPoint>> getMapPoints({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  }) async {
    final List<MapPoint> mapPoints = [];
    //final mapPoints = await mapRepository.getMapPoints(
    //  filters: filters,
    //  northeast: northeast,
    //  southwest: southwest,
    //);

    final clubs = await clubRepository.getPartnerClubs(
      clubFilters: filters,
      clubSorting: ClubSortingEnum.nearest,
      northeast: northeast,
      southwest: southwest,
    );

    for (final c in clubs) {
      mapPoints.add(MapPoint(
        type: c.batchHoursAvailable != 0
            ? MapPointsEnum.partnerClubWithBatch
            : MapPointsEnum.partnerClub,
        coordinates: c.address!.coordinates,
        id: c.uuid!,
        data: MapPointData(
          price: c.minPrice,
          count: null,
          batchHours: c.batchHoursAvailable,
        ),
      ));
    }

    return mapPoints;
  }
}
