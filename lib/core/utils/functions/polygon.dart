import 'package:fitt/domain/entities/lat_lng/lat_lng.dart';

String polygon(LatLng? northeast, LatLng? southwest) {
  if (northeast == null || southwest == null) return '';
  final rightTop = '${northeast.latitude.toStringAsFixed(8)} ${northeast.longitude.toStringAsFixed(8)}';
  final rightBottom = '${southwest.latitude.toStringAsFixed(8)} ${northeast.longitude.toStringAsFixed(8)}';
  final leftBottom = '${southwest.latitude.toStringAsFixed(8)} ${southwest.longitude.toStringAsFixed(8)}';
  final leftTop = '${northeast.latitude.toStringAsFixed(8)} ${southwest.longitude.toStringAsFixed(8)}';
  final mapBounds = '$rightTop, $rightBottom, $leftBottom, $leftTop, $rightTop';
  return 'POLYGON(($mapBounds))';
}
