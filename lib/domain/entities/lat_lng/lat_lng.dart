import 'package:fitt/core/utils/mixins/serializable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;
import 'package:json_annotation/json_annotation.dart';

part 'lat_lng.g.dart';

@JsonSerializable()
@LatLngConverter()
class LatLng implements Serializable {
  const LatLng(this.latitude, this.longitude);
  factory LatLng.fromJson(List json) => const LatLngConverter().fromJson(json);
  factory LatLng.fromGoogleMaps(gmaps.LatLng googleLatLng) =>
      LatLng(googleLatLng.latitude, googleLatLng.longitude);

  final double latitude;
  final double longitude;

  @override
  List<double> toJson() => const LatLngConverter().toJson(this);

  gmaps.LatLng toGoogleMaps() {
    final local = gmaps.LatLng.fromJson(toJson());
    if (local == null) return gmaps.LatLng(latitude, longitude);
    return local;
  }

  Map<String, Object?> get props =>
      toJson().asMap().map((k, v) => MapEntry(k.toString(), v));
}

class LatLngConverter implements JsonConverter<LatLng, List<double>> {
  const LatLngConverter();

  @override
  LatLng fromJson(List json) {
    assert(json.length == 2);
    final list = List<double>.from(json);
    return LatLng(list[0], list[1]);
  }

  @override
  List<double> toJson(LatLng object) {
    return [object.latitude, object.longitude];
  }
}

extension GLatLngX on gmaps.LatLng {
  LatLng toEntity() => LatLng(latitude, longitude);
}
