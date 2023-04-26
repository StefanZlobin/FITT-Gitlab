import 'package:fitt/core/enum/map_points_enum.dart';
import 'package:fluster/fluster.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_marker.freezed.dart';

@freezed
class MapMarker with _$MapMarker {
  const MapMarker._();
  const factory MapMarker({
    required String markerId,
    required LatLng coordinates,
    required BitmapDescriptor icon,
    required VoidCallback onPressed,
    @Default(MapPointsEnum.partnerClub) MapPointsEnum type,
    @Default(false) bool isActive,
    @Default(false) bool isCluster,
    int? clusterId,
    int? pointsSize,
    @Default(<String>[]) List<String> childMarkerIds,
  }) = _MapMarker;

  factory MapMarker.fromClusterable(ClusterableMarker clusterable) {
    return MapMarker(
      markerId: clusterable.markerId!,
      coordinates: LatLng(clusterable.latitude!, clusterable.longitude!),
      icon: clusterable.icon,
      onPressed: clusterable.onPressed,
      isCluster: clusterable.isCluster!,
      clusterId: clusterable.clusterId,
      pointsSize: clusterable.pointsSize,
      childMarkerIds: clusterable.childMarkerIds,
      isActive: clusterable.isActive,
      type: clusterable.type,
    );
  }

  ClusterableMarker toClusterable() => ClusterableMarker(
        icon: icon,
        onPressed: onPressed,
        latitude: coordinates.latitude,
        longitude: coordinates.longitude,
        isCluster: isCluster,
        clusterId: clusterId,
        pointsSize: pointsSize,
        markerId: markerId,
        childMarkerIds: childMarkerIds,
        isActive: isActive,
        type: type,
      );

  Marker toMarker() => Marker(
        markerId: MarkerId(markerId),
        position: coordinates,
        icon: icon,
        anchor: const Offset(0.5, 0.5),
        consumeTapEvents: true,
        onTap: onPressed,
      );
}

class ClusterableMarker extends Clusterable {
  ClusterableMarker({
    required this.icon,
    required this.onPressed,
    required this.isActive,
    required this.type,
    super.latitude,
    super.longitude,
    super.isCluster,
    super.clusterId,
    super.pointsSize,
    super.markerId,
    super.childMarkerIds = const [],
  });

  final BitmapDescriptor icon;
  final VoidCallback onPressed;
  final bool isActive;
  final MapPointsEnum type;
}
