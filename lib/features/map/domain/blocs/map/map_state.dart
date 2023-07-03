part of 'map_bloc.dart';

@Freezed(equal: false)
class MapState with _$MapState {
  const factory MapState.initial() = _MapStateInitial;
  const factory MapState.loading() = _MapStateLoading;
  const factory MapState.loaded({
    required List<MapPoint> mapPoints,
    required gm.LatLngBounds visibleRegion,
    required List<MapMarker> markers,
    required ClubFilters filters,
  }) = _MapStateLoaded;
  const factory MapState.error() = _MapStateError;
}
