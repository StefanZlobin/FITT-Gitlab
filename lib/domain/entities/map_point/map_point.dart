import 'package:fitt/core/enum/map_points_enum.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/domain/entities/map_point/map_point_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_point.freezed.dart';
part 'map_point.g.dart';

@freezed
class MapPoint with _$MapPoint {
  factory MapPoint({
    required MapPointsEnum type,
    required LatLng coordinates,
    required String id,
    required MapPointData data,
  }) = _MapPoint;

  MapPoint._();

  factory MapPoint.fromJson(Map<String, dynamic> json) =>
      _$MapPointFromJson(json);
}
