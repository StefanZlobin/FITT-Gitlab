import 'dart:async';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:collection/collection.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/enum/map_points_enum.dart';
import 'package:fitt/core/helpers/map_helper.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/features/clubs/domain/blocs/club_filtering/club_filtering_bloc.dart';
import 'package:fitt/features/map/domain/entities/lat_lng/lat_lng.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_marker.dart';
import 'package:fitt/features/map/domain/entities/map_point/map_point.dart';
import 'package:fitt/features/map/domain/use_cases/map/map_use_case.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:fluster/fluster.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gm;
import 'package:uuid/uuid.dart';

import '../carousel/carousel_bloc.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const _MapStateInitial()) {
    on<_MapEventMapCreated>(_onMapCreated, transformer: restartable());
    on<_MapEventCameraMove>(_onCameraMoved, transformer: restartable());
    on<_MapEventFiltersDetected>(
      _onFiltersDetected,
      transformer: restartable(),
    );
    on<_MapEventMarkerTapped>(_onMarkerTapped, transformer: restartable());
    on<_MapEventCarouselCardFocused>(
      _onCarouselCardFocused,
      transformer: restartable(),
    );

    getIt<ClubFilteringBloc>().stream.listen((ClubFilteringState state) {
      state.whenOrNull(
        loaded: (selectedFacilities, selectedPrice, _, __) {
          final activeFacilities = selectedFacilities!.entries
              .where((element) => element.value)
              .map((e) => e.key)
              .toList();

          add(MapEvent.filtersDetected(
            filters: ClubFilters(
              facilities: activeFacilities,
              maxPrice: selectedPrice!.maxPrice,
              minPrice: selectedPrice.minPrice,
              favorite: false,
            ),
          ));
        },
      );
    });
  }

  final _mapUseCase = MapUseCase();

  final Completer<gm.GoogleMapController> _controller = Completer();

  /// Minimum zoom at which the markers will cluster
  final int _minClusterZoom = 0;

  /// Maximum zoom at which the markers will cluster
  final int _maxClusterZoom = 19;

  /// Color of the cluster circle
  final Color _clusterColor = AppColors.kBaseBlack;

  /// Color of the cluster text
  final Color _clusterTextColor = AppColors.kBaseWhite;

  final _activeMarkerImage = gm.BitmapDescriptor.fromAssetImage(
    ImageConfiguration(devicePixelRatio: ui.window.devicePixelRatio),
    Assets.images.activeMapMarker.path,
  );

  final _activeMarkerWithBatchImage = gm.BitmapDescriptor.fromAssetImage(
    ImageConfiguration(devicePixelRatio: ui.window.devicePixelRatio),
    Assets.images.activeBatchMapMarker.path,
  );

  final _inactiveMarkerImage = gm.BitmapDescriptor.fromAssetImage(
    ImageConfiguration(devicePixelRatio: ui.window.devicePixelRatio),
    Assets.images.mapMarker.path,
  );

  final _inactiveMarkerWithBatchImage = gm.BitmapDescriptor.fromAssetImage(
    ImageConfiguration(devicePixelRatio: ui.window.devicePixelRatio),
    Assets.images.batchMapMarker.path,
  );

  _MapStateLoaded? get _prevLoaded => state.maybeMap(
        loaded: (s) => s,
        orElse: () => null,
      );

  ClubFilters get _filters => _prevLoaded?.filters ?? ClubFilters.defaultValue;

  CarouselBloc get _carouselBloc => getIt();

  Future<void> _onMapCreated(
    _MapEventMapCreated event,
    Emitter<MapState> emit,
  ) async {
    if (!_controller.isCompleted) {
      _controller.complete(event.controller);
    }
  }

  Future<void> _onFiltersDetected(
    _MapEventFiltersDetected event,
    Emitter emit,
  ) async {
    final filters = event.filters;
    final mapPoints = await _mapUseCase.getMapPoints(
      filters: filters,
      northeast: _prevLoaded!.visibleRegion.northeast.toEntity(),
      southwest: _prevLoaded!.visibleRegion.southwest.toEntity(),
    );

    add(
      MapEvent.cameraMove(
        northeast: _prevLoaded!.visibleRegion.northeast.toEntity(),
        southwest: _prevLoaded!.visibleRegion.southwest.toEntity(),
        visibleRegion: _prevLoaded!.visibleRegion,
        zoom: 12, // переделать
      ),
    );

    emit(
      _prevLoaded!.copyWith(
        filters: filters,
        mapPoints: mapPoints,
        visibleRegion: _prevLoaded!.visibleRegion,
      ),
    );
  }

  /// Inits [Fluster] and all the markers with network images and updates the loading state.
  Future<void> _onCameraMoved(
    _MapEventCameraMove event,
    Emitter<MapState> emit,
  ) async {
    final mapPoints = await _mapUseCase.getMapPoints(
      northeast: event.northeast,
      southwest: event.southwest,
      filters: _filters,
    );

    if (mapPoints.isEmpty) {
      emit(
        MapState.loaded(
          markers: [],
          filters: _filters,
          mapPoints: mapPoints,
          visibleRegion: gm.LatLngBounds(
            northeast:
                gm.LatLng(event.northeast.latitude, event.northeast.longitude),
            southwest:
                gm.LatLng(event.southwest.latitude, event.southwest.longitude),
          ),
          isVisibleRegionUpdated: true,
        ),
      );
    }

    final gm.BitmapDescriptor markerImage = await _inactiveMarkerImage;
    final gm.BitmapDescriptor batchMarkerImage =
        await _inactiveMarkerWithBatchImage;

    final Map<String, MapMarker> prevMarkers = Map.fromEntries(
      _prevLoaded?.markers.map((e) => MapEntry(e.markerId, e)) ?? [],
    );
    final List<MapMarker> newMarkers = [];

    for (final mapPoint in mapPoints) {
      late MapMarker marker;

      marker = prevMarkers[mapPoint.id] ??
          MapMarker(
            markerId: mapPoint.id,
            coordinates: mapPoint.coordinates.toGoogleMaps(),
            icon: mapPoint.type == MapPointsEnum.partnerClubWithBatch
                ? batchMarkerImage
                : markerImage,
            type: mapPoint.type,
            onPressed: () => add(MapEvent.markerTapped(marker)),
          );

      newMarkers.add(marker);
    }

    final markersList = await _makeClusters(newMarkers, event.zoom);
    final markers = await _ensureSingleActiveMarker(markersList);

    _carouselBloc.add(CarouselEvent.clubSelected(_clubId(markers.active)));

    emit(
      MapState.loaded(
        isVisibleRegionUpdated: true,
        markers: markers.all,
        filters: _filters,
        mapPoints: mapPoints,
        visibleRegion: gm.LatLngBounds(
          northeast:
              gm.LatLng(event.northeast.latitude, event.northeast.longitude),
          southwest:
              gm.LatLng(event.southwest.latitude, event.southwest.longitude),
        ),
      ),
    );
  }

  Future<List<MapMarker>> _makeClusters(
    List<MapMarker> markers,
    double updatedZoom,
  ) async {
    final clusterManager = MapHelper.initClusterManager(
      markers.map((e) => e.toClusterable()).toList(),
      _minClusterZoom,
      _maxClusterZoom,
      (m) => add(MapEvent.markerTapped(m)),
    );

    return MapHelper.getClusterMarkers(
      clusterManager,
      updatedZoom,
      _clusterColor,
      _clusterTextColor,
      120,
    );
  }

  Future<_Markers> _ensureSingleActiveMarker(List<MapMarker> markers) async {
    var clusters = markers;
    final activeClusters = <MapMarker>[];
    final inactiveClusters = <MapMarker>[];
    late MapMarker activeMarker;

    for (final c in clusters) {
      if (c.isActive) {
        activeClusters.add(c);
      } else {
        inactiveClusters.add(c);
      }
    }

    if (activeClusters.length > 1) {
      final deactivated = await Future.wait(activeClusters
          .take(activeClusters.length - 1)
          .map(_deactivateMarker));

      activeMarker = activeClusters.last;
      clusters = inactiveClusters + deactivated + [activeMarker];
    } else {
      if (activeClusters.isNotEmpty) {
        activeMarker = activeClusters.single;
      }
    }

    if (activeClusters.isEmpty && markers.isNotEmpty) {
      activeMarker = clusters[0] = await _activateMarker(clusters[0]);
    }

    return _Markers(clusters, activeMarker);
  }

  // select marker
  Future<void> _onMarkerTapped(
    _MapEventMarkerTapped event,
    Emitter emit,
  ) async {
    final marker = event.marker;

    _carouselBloc.add(CarouselEvent.clubSelected(_clubId(marker)));

    final prevState = _prevLoaded;
    if (prevState == null) {
      return;
    }

    if (marker.isCluster) {
      final controller = await _controller.future;
      final zoom = await controller.getZoomLevel();
      final update = gm.CameraUpdate.newLatLngZoom(
        marker.coordinates,
        zoom + 1,
      );

      unawaited(controller.animateCamera(update));
    }

    final newState = prevState.copyWith(
      isVisibleRegionUpdated: false,
      markers: [
        for (final m in prevState.markers)
          if (m.markerId == marker.markerId)
            await _activateMarker(marker)
          else if (m.isActive)
            await _deactivateMarker(m)
          else
            m,
      ],
    );

    emit(newState);
  }

  Future<void> _onCarouselCardFocused(
    _MapEventCarouselCardFocused event,
    Emitter<MapState> emit,
  ) async {
    final prevState = _prevLoaded;
    if (prevState == null) {
      return;
    }

    bool isTargetMarker(MapMarker marker, String clubId) {
      return marker.markerId == clubId ||
          marker.childMarkerIds.contains(clubId);
    }

    final newState = prevState.copyWith(
      isVisibleRegionUpdated: false,
      markers: [
        for (final m in prevState.markers)
          if (isTargetMarker(m, event.clubId)) ...{
            await _activateMarker(m),
          } else if (m.isActive)
            await _deactivateMarker(m)
          else
            m,
      ],
    );

    emit(newState);
  }

  Future<MapMarker> _activateMarker(MapMarker marker) async {
    final gm.BitmapDescriptor activeMarkerImage;
    activeMarkerImage = marker.isCluster
        ? await MapHelper.getActiveClusterMarker(
            marker.pointsSize!,
            _clusterColor,
            AppColors.kPrimaryRed,
            _clusterTextColor,
            120,
          )
        : marker.type == MapPointsEnum.partnerClubWithBatch
            ? await _activeMarkerWithBatchImage
            : await _activeMarkerImage;

    return marker.copyWith(isActive: true, icon: activeMarkerImage);
  }

  Future<MapMarker> _deactivateMarker(MapMarker marker) async {
    final gm.BitmapDescriptor inactiveMarkerImage;
    inactiveMarkerImage = marker.isCluster
        ? await MapHelper.getInactiveClusterMarker(
            marker.pointsSize!,
            _clusterColor,
            _clusterTextColor,
            120,
          )
        : marker.type == MapPointsEnum.partnerClubWithBatch
            ? await _inactiveMarkerWithBatchImage
            : await _inactiveMarkerImage;
    return marker.copyWith(isActive: false, icon: inactiveMarkerImage);
  }

  String _clubId(MapMarker marker) {
    final id = marker.childMarkerIds.firstWhereOrNull(
          (markerId) => Uuid.isValidUUID(fromString: markerId),
        ) ??
        marker.markerId;
    assert(Uuid.isValidUUID(fromString: id), 'No valid club id');
    return id;
  }
}

class _Markers {
  final List<MapMarker> all;
  final MapMarker active;

  const _Markers(this.all, this.active);
}
