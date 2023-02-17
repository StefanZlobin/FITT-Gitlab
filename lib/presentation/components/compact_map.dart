import 'dart:ui' as ui;

import 'package:fitt/domain/entities/lat_lng/lat_lng.dart' as latlng;
import 'package:fitt/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompactMap extends StatefulWidget {
  const CompactMap({
    Key? key,
    required this.clubCoordinates,
    this.onPressed,
  }) : super(key: key);

  final latlng.LatLng clubCoordinates;
  final VoidCallback? onPressed;

  @override
  State<CompactMap> createState() => _CompactMapState();
}

class _CompactMapState extends State<CompactMap> {
  BitmapDescriptor marker = BitmapDescriptor.defaultMarker;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: ui.window.devicePixelRatio),
      Assets.images.markerActive.path,
    ).then((value) => setState(() => marker = value));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onPressed?.call(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: GoogleMap(
          compassEnabled: false,
          mapToolbarEnabled: false,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          markers: {
            Marker(
              markerId: MarkerId('club${widget.clubCoordinates}'),
              icon: marker,
              position: LatLng(widget.clubCoordinates.latitude,
                  widget.clubCoordinates.longitude),
            )
          },
          initialCameraPosition: CameraPosition(
            zoom: 16,
            target: LatLng(widget.clubCoordinates.latitude,
                widget.clubCoordinates.longitude),
          ),
        ),
      ),
    );
  }
}
