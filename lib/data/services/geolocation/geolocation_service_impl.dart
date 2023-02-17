import 'dart:async';

import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationServiceImpl implements GeolocationService {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;

  @override
  Future<void> openSettings() async {
    await _geolocatorPlatform.openAppSettings();
  }

  @override
  Future<bool> checkPermission() async {
    final permission = await _geolocatorPlatform.checkPermission();
    switch (permission) {
      case LocationPermission.always:
      case LocationPermission.whileInUse:
        return true;
      case LocationPermission.unableToDetermine:
      case LocationPermission.denied:
      case LocationPermission.deniedForever:
        return false;
    }
  }

  @override
  Future<void> requestPermission() async {
    await _geolocatorPlatform.requestPermission();
  }

  @override
  Future<Position> getCurrentPosition() async {
    try {
      final currentPosition = await _geolocatorPlatform.getCurrentPosition();
      return currentPosition;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Position?> getLastKnowPosition() async {
    final lastPosition = await _geolocatorPlatform.getLastKnownPosition();
    return lastPosition;
  }

  @override
  StreamSubscription<Position> watchCurrent() {
    // TODO: implement watchCurrent
    throw UnimplementedError();
  }
}
