import 'dart:async';

import 'package:geolocator/geolocator.dart';

abstract class GeolocationService {
  /// 
  Future<void> openSettings();

  /// Request permission to access the device's location
  Future<void> requestPermission();

  /// Check if the user already granted permissions
  /// to acquire the device's location
  Future<bool> checkPermission();

  /// Get current position [Position]
  Future<Position> getCurrentPosition();

  /// Get last know position [Position]
  Future<Position?> getLastKnowPosition();

  /// Allows you to track your location
  StreamSubscription<Position> watchCurrent();
}
