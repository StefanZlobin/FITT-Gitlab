// ignore_for_file: only_throw_errors

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/club_sorting_enum.dart';
import 'package:fitt/core/enum/map_points_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/functions/polygon.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/features/clubs/data/models/request/partner_club/get_partner_clubs_request_body.dart';
import 'package:fitt/features/clubs/data/source/remote_data_source/partner_club_api_client/partner_club_api_client.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point_data.dart';
import 'package:fitt/features/map/domain/repositories/map/map_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class MapRepositoryImpl implements MapRepository {
  MapRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = PartnerClubApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final PartnerClubApiClient _apiClient;

  final BehaviorSubject<List<MapPoint>> _mapPointsController =
      BehaviorSubject.seeded(<MapPoint>[], sync: true);
  void Function(List<MapPoint>) get updateMapPoints =>
      _mapPointsController.sink.add;
  @override
  Stream<List<MapPoint>> get mapPoints => _mapPointsController;

  final BehaviorSubject<List<PartnerClub>> _clubsController =
      BehaviorSubject.seeded(<PartnerClub>[], sync: true);
  void Function(List<PartnerClub>) get updateClubs => _clubsController.sink.add;
  @override
  Stream<List<PartnerClub>> get clubs => _clubsController;

  @override
  List<PartnerClub> get clubList => _clubsController.value;

  @override
  Future<List<MapPoint>> getMapPointsByClub({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  }) async {
    final List<MapPoint> mapPoints = [];
    late String xPosition;

    try {
      final geolocation =
          await getIt<GeolocationService>().getCurrentPosition();
      xPosition = 'Point(${geolocation.latitude} ${geolocation.longitude})';
    } on Exception {
      xPosition = '';
    }

    try {
      final clubs = await _apiClient.getPartnerClubs(
        xPosition,
        GetPartnerClubsRequestBody(
          facilities: filters.getActiveFacilitiesIds,
          maxPrice: filters.maxPrice,
          minPrice: filters.minPrice,
          poligon: polygon(northeast, southwest),
          sorting: ClubSortingEnum.nearest
              .convertSortingToField(ClubSortingEnum.nearest),
          withBatch: filters.onlyWithBatch,
        ),
      );

      for (final c in clubs.results) {
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

      updateClubs(clubs.results);
      updateMapPoints(mapPoints);

      return mapPoints;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  FutureOr onDispose() {
    _mapPointsController.close();
    _clubsController.close();
  }

  @override
  Future<List<MapPoint>> getMapPoints({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  }) {
    // TODO: implement getMapPoints
    throw UnimplementedError();
  }
}
