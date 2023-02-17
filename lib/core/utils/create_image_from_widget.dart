import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Future<Uint8List> createImageFromWidget(Widget widget, {Size? size}) {
  final repaintBoundary = RenderRepaintBoundary();
  // ignore: no_leading_underscores_for_local_identifiers
  final _size = size ?? ui.window.physicalSize / ui.window.devicePixelRatio;
  final renderView = RenderView(
    child: RenderPositionedBox(child: repaintBoundary),
    configuration: ViewConfiguration(
      size: _size,
      devicePixelRatio: ui.window.devicePixelRatio,
    ),
    window: _FakeFlutterView(
        ui.ViewConfiguration(devicePixelRatio: ui.window.devicePixelRatio)),
  );

  final pipelineOwner = PipelineOwner()..rootNode = renderView;
  renderView.prepareInitialFrame();

  final buildOwner = BuildOwner(focusManager: FocusManager());
  final rootElement = RenderObjectToWidgetAdapter<RenderBox>(
    container: repaintBoundary,
    child: Directionality(
      textDirection: TextDirection.ltr,
      child: size != null
          ? widget
          : IntrinsicHeight(child: IntrinsicWidth(child: widget)),
    ),
  ).attachToRenderTree(buildOwner);

  buildOwner
    ..buildScope(rootElement)
    ..finalizeTree();
  pipelineOwner
    ..flushLayout()
    ..flushCompositingBits()
    ..flushPaint();

  return repaintBoundary
      .toImage(pixelRatio: ui.window.devicePixelRatio)
      .then((image) => image.toByteData(format: ui.ImageByteFormat.png))
      .then<Uint8List>((byteData) => byteData!.buffer.asUint8List());
}

class _FakeFlutterView extends ui.FlutterView {
  _FakeFlutterView(this.viewConfiguration);

  @override
  ui.PlatformDispatcher get platformDispatcher =>
      ui.PlatformDispatcher.instance;

  @override
  final ui.ViewConfiguration viewConfiguration;
}
