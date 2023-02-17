import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/domain/entities/map_point/map_marker.dart';
import 'package:fluster/fluster.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// In here we are encapsulating all the logic required to get marker icons from url images
/// and to show clusters using the [Fluster] package.
class MapHelper {
  /// If there is a cached file and it's not old returns the cached marker image file
  /// else it will download the image and save it on the temp dir and return that file.
  ///
  /// This mechanism is possible using the [DefaultCacheManager] package and is useful
  /// to improve load times on the next map loads, the first time will always take more
  /// time to download the file and set the marker image.
  ///
  /// You can resize the marker image by providing a [targetWidth].
  static Future<BitmapDescriptor> getMarkerImageFromUrl(
    String url, {
    int? targetWidth,
  }) async {
    final File markerImageFile = await DefaultCacheManager().getSingleFile(url);

    Uint8List markerImageBytes = await markerImageFile.readAsBytes();

    if (targetWidth != null) {
      markerImageBytes = await _resizeImageBytes(
        markerImageBytes,
        targetWidth,
      );
    }

    return BitmapDescriptor.fromBytes(markerImageBytes);
  }

  static Future<BitmapDescriptor> getActiveClusterMarker(
    int clusterSize,
    Color clusterColor,
    Color borderColor,
    Color textColor,
    int width,
  ) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint borderPaint = Paint()..color = borderColor;
    final Paint innerPaint = Paint()..color = clusterColor;
    final material.TextPainter textPainter = material.TextPainter(
      textDirection: TextDirection.ltr,
    );

    final double radius = width / 2;

    canvas.drawCircle(
      Offset(radius, radius),
      radius,
      borderPaint,
    );

    canvas.drawCircle(
      Offset(radius, radius),
      radius - 16,
      innerPaint,
    );

    textPainter.text = material.TextSpan(
      text: clusterSize.toString(),
      style: material.TextStyle(
        fontSize: radius - 5,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(radius - textPainter.width / 2, radius - textPainter.height / 2),
    );

    final image = await pictureRecorder.endRecording().toImage(
          radius.toInt() * 2,
          radius.toInt() * 2,
        );
    final data = await image.toByteData(format: ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }

  /// Draw a [clusterColor] circle with the [clusterSize] text inside that is [width] wide.
  ///
  /// Then it will convert the canvas to an image and generate the [BitmapDescriptor]
  /// to be used on the cluster marker icons.
  static Future<BitmapDescriptor> getInactiveClusterMarker(
    int clusterSize,
    Color clusterColor,
    Color textColor,
    int width,
  ) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint = Paint()..color = AppColors.kPrimaryBlue;
    final Paint innerPaint = Paint()..color = AppColors.kBaseBlack;
    final material.TextPainter textPainter = material.TextPainter(
      textDirection: TextDirection.ltr,
    );

    final double radius = width / 2;

    canvas.drawCircle(
      Offset(radius, radius),
      radius,
      paint,
    );

    canvas.drawCircle(
      Offset(radius, radius),
      radius - 16,
      innerPaint,
    );

    textPainter.text = material.TextSpan(
      text: clusterSize.toString(),
      style: material.TextStyle(
        fontSize: radius - 5,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(radius - textPainter.width / 2, radius - textPainter.height / 2),
    );

    final image = await pictureRecorder.endRecording().toImage(
          radius.toInt() * 2,
          radius.toInt() * 2,
        );
    final data = await image.toByteData(format: ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
  }

  /// Resizes the given [imageBytes] with the [targetWidth].
  ///
  /// We don't want the marker image to be too big so we might need to resize the image.
  static Future<Uint8List> _resizeImageBytes(
    Uint8List imageBytes,
    int targetWidth,
  ) async {
    final Codec imageCodec = await instantiateImageCodec(
      imageBytes,
      targetWidth: targetWidth,
    );

    final FrameInfo frameInfo = await imageCodec.getNextFrame();

    final data = await frameInfo.image.toByteData(format: ImageByteFormat.png);

    return data!.buffer.asUint8List();
  }

  /// Inits the cluster manager with all the [MapMarker] to be displayed on the map.
  /// Here we're also setting up the cluster marker itself, also with an [clusterImageUrl].
  ///
  /// For more info about customizing your clustering logic check the [Fluster] constructor.
  static Fluster<ClusterableMarker> initClusterManager(
    List<ClusterableMarker> markers,
    int minZoom,
    int maxZoom,
    FutureOr<void> Function(MapMarker) onClusterTapped,
  ) {
    return Fluster<ClusterableMarker>(
      minZoom: minZoom,
      maxZoom: maxZoom,
      radius: 150,
      extent: 2048,
      nodeSize: 64,
      points: markers,
      createCluster: (
        BaseCluster? cluster,
        double? lng,
        double? lat,
      ) {
        late MapMarker c;
        // ignore: join_return_with_assignment
        c = MapMarker(
          markerId: cluster!.id.toString(),
          coordinates: LatLng(lat!, lng!),
          icon: BitmapDescriptor.defaultMarker,
          onPressed: () => onClusterTapped(c),
          isCluster: cluster.isCluster,
          clusterId: cluster.id,
          pointsSize: cluster.pointsSize,
          childMarkerIds: cluster.childMarkerIds,
        );
        return c.toClusterable();
      },
    );
  }

  /// Gets a list of markers and clusters that reside within the visible bounding box for
  /// the given [currentZoom]. For more info check [Fluster.clusters].
  static Future<List<MapMarker>> getClusterMarkers(
    Fluster<ClusterableMarker>? clusterManager,
    double currentZoom,
    Color clusterColor,
    Color clusterTextColor,
    int clusterWidth,
  ) {
    if (clusterManager == null) return Future.value([]);

    return Future.wait(clusterManager
        .clusters(
          [-180, -85, 180, 85],
          currentZoom.toInt(),
        )
        .map(MapMarker.fromClusterable)
        .map((mapMarker) async {
          if (mapMarker.isCluster) {
            return mapMarker.copyWith(
              icon: await getInactiveClusterMarker(
                mapMarker.pointsSize!,
                clusterColor,
                clusterTextColor,
                clusterWidth,
              ),
            );
          }

          return mapMarker;
        })
        .toList());
  }
}
