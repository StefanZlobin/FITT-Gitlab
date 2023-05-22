part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.cameraMove({
    ClubFilters? filters,
    required LatLng northeast,
    required LatLng southwest,
    required gm.LatLngBounds visibleRegion,
    required double zoom,
  }) = _MapEventCameraMove;

  const factory MapEvent.filtersDetected({
    required ClubFilters filters,
  }) = _MapEventFiltersDetected;

  const factory MapEvent.markerTapped(MapMarker marker) = _MapEventMarkerTapped;
  const factory MapEvent.carouselCardFocused(String clubId) =
      _MapEventCarouselCardFocused;

  const factory MapEvent.mapCreated(gm.GoogleMapController controller) =
      _MapEventMapCreated;
}
