// ignore_for_file: prefer_mixin

import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/clubs/domain/entities/club/partner_club.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:get_it/get_it.dart';

abstract class MapRepository with Disposable {
  Future<List<MapPoint>> getMapPoints({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  });

  Future<List<MapPoint>> getMapPointsByClub({
    required ClubFilters filters,
    required LatLng northeast,
    required LatLng southwest,
  });

  Stream<List<MapPoint>> get mapPoints;
  Stream<List<PartnerClub>> get clubs;
  List<PartnerClub> get clubList;
}
