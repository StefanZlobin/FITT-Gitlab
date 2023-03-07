import 'dart:async';

import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/map/map_bloc.dart';
import 'package:fitt/domain/blocs/search/search_bloc.dart';
import 'package:fitt/domain/cubits/filtering/filtering_cubit.dart';
import 'package:fitt/domain/cubits/geolocation/geolocation_cubit.dart';
import 'package:fitt/domain/entities/filters/club_filters.dart';
import 'package:fitt/domain/entities/lat_lng/lat_lng.dart' as latlng;
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final _mapBloc = getIt<MapBloc>();
  final Completer<GoogleMapController> _controller = Completer();

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _mapBloc.add(MapEvent.mapCreated(controller));
    _controller.complete(controller);
    await getIt<GeolocationService>().getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SearchBloc, SearchState>(
          bloc: getIt<SearchBloc>(),
          listener: (context, state) {
            state.whenOrNull(
              suggesstionTapped: (searchAddress) async {
                final controller = await _controller.future;
                await controller.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: LatLng(
                          searchAddress.latitude, searchAddress.longitude),
                      zoom: 16,
                    ),
                  ),
                );
              },
            );
          },
        ),
        BlocListener<FilteringCubit, FilteringState>(
          bloc: getIt<FilteringCubit>(),
          listener: (context, state) {
            state.whenOrNull(
              loaded: (filters, selectedFacilities, _, __, ___,
                  activeFacilitiesList) {
                _mapBloc.add(MapEvent.filtersDetected(
                    filters: ClubFilters(
                  facilities: activeFacilitiesList,
                  maxPrice: filters.maxPrice,
                  minPrice: filters.minPrice,
                )));
              },
            );
          },
        ),
        BlocListener<GeolocationCubit, GeolocationState>(
          bloc: getIt<GeolocationCubit>(),
          listener: (context, state) {
            state.whenOrNull(
              locationDetected: (position) async {
                final c = await _controller.future;
                await c.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: LatLng(position.latitude, position.longitude),
                      zoom: 16,
                    ),
                  ),
                );
              },
              locationDetectingError: (error) async {
                await getIt<GeolocationService>().openSettings();
              },
            );
          },
        ),
      ],
      child: BlocBuilder<MapBloc, MapState>(
        bloc: _mapBloc,
        builder: (context, state) {
          final markers = state.maybeMap(
            loaded: (s) => s.markers.map((e) => e.toMarker()).toSet(),
            orElse: () => const <Marker>{},
          );

          return GoogleMap(
            markers: markers,
            initialCameraPosition: const CameraPosition(
              target: LatLng(59.9311, 30.3609),
              zoom: 10.5,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: _onMapCreated,
            onCameraIdle: () async {
              final c = await _controller.future;
              final visibleRegion = await c.getVisibleRegion();
              final z = await c.getZoomLevel();
              _mapBloc.add(
                MapEvent.cameraMove(
                  zoom: z,
                  visibleRegion: visibleRegion,
                  northeast: toLatLngEntity(visibleRegion.northeast),
                  southwest: toLatLngEntity(visibleRegion.southwest),
                ),
              );
            },
          );
        },
      ),
    );
  }

  latlng.LatLng toLatLngEntity(LatLng value) {
    return latlng.LatLng(value.latitude, value.longitude);
  }
}
