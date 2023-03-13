// ignore_for_file: library_private_types_in_public_api

import 'dart:math' as math;

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/helpers/measure_size.dart';
import 'package:fitt/core/helpers/self_sized_custom_painter.dart';
import 'package:flutter/material.dart';

const int _kDefaultDivisionNumber = 27;
const double _kThumbRadius = 12;
const double _kBoundsVerticalMarkHeight = 4;
const double _kBoundsVerticalMarkWidth = 1;
const double _kTooltipPadding = 4;
const double _kStatsMaxHeight = 59;

class RangeFilterWidget extends StatefulWidget {
  const RangeFilterWidget({
    Key? key,
    required this.initialValues,
    required this.bounds,
    required this.onChanged,
    required this.popularityStats,
  })  : assert(popularityStats.length > 1),
        super(key: key);

  final RangeValues initialValues;
  final RangeValues bounds;
  final List<int> popularityStats;

  /// Called whenever user completed changing selection
  final ValueChanged<RangeValues> onChanged;

  /// Retrurns filter value at particular division index
  ///
  /// Number of divisions - [_kDefaultDivisionNumber]
  double valueAt(int index) {
    assert(index >= 0);
    assert(index < _kDefaultDivisionNumber);

    final step = (bounds.end - bounds.start) / _kDefaultDivisionNumber - 1;
    final res = bounds.start + (step * index);
    return res.roundToDouble();
  }

  @override
  _RangeFilterWidgetState createState() => _RangeFilterWidgetState();
}

class _RangeFilterWidgetState extends State<RangeFilterWidget> {
  late RangeValues sliderValues;
  double trackWidth = 0;
  Thumb? _lastActiveThumb = Thumb.start;
  final Map<Thumb, OverlayEntry> _tooltipEntries = <Thumb, OverlayEntry>{};
  final _tooltipVisibility = <Thumb, bool>{
    Thumb.start: false,
    Thumb.end: false,
  };
  final _layerLink = LayerLink();
  int i = 0;

  @override
  void initState() {
    super.initState();
    sliderValues = widget.initialValues;

    _tooltipEntries[Thumb.start] = _createTooltipEntry(Thumb.start);
    _tooltipEntries[Thumb.end] = _createTooltipEntry(Thumb.end);

    final local = WidgetsBinding.instance;

    local.addPostFrameCallback((timeStamp) {
      Overlay.of(context).insertAll(_tooltipEntries.values);
    });

    /// Filters card slides from bottom, so we can instantly show the tooltip.
    /// So we can for [CupertinoPageRoute]. But for [MaterialPageRoute] we should
    /// call `Future.delayed(milliseconds: 300)` // see docs for concrete value
    if (widget.initialValues.start > widget.bounds.start) {
      local.addPostFrameCallback((_) => showTooltip(Thumb.start));
    }
    if (widget.initialValues.end < widget.bounds.end) {
      local.addPostFrameCallback((_) => showTooltip(Thumb.end));
    }
  }

  @override
  void didUpdateWidget(RangeFilterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final local = WidgetsBinding.instance;

    if (widget.bounds.start == widget.initialValues.start &&
        widget.bounds.end == widget.initialValues.end) {
      local.addPostFrameCallback((timeStamp) {
        for (final v in Thumb.values) {
          hideTooltip(v);
        }
      });
    }
    _updateMethod();
  }

  Future<void> _updateMethod() async {
    setState(() {
      sliderValues = widget.initialValues;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16 + _kThumbRadius,
        vertical: 16 + _kThumbRadius,
      ), //16
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _PopularityStats(
              bounds: widget.bounds,
              filterValues: sliderValues,
              stats: widget.popularityStats,
            ),
            const SizedBox(height: 4),
            MeasureSize(
              onChange: (size) => trackWidth = size.width,
              child: SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: AppColors.kPrimaryBlue,
                  thumbColor: AppColors.kPrimaryBlue,
                  trackHeight: 1,
                  inactiveTrackColor: AppColors.kOxford20,
                  overlayShape: SliderComponentShape.noOverlay,
                  showValueIndicator: ShowValueIndicator.never,
                  rangeThumbShape: AppRangeSliderThumbShape(
                    color: AppColors.kPrimaryBlue,
                    shadow: const BoxShadow(
                      color: AppColors.kOxford20,
                      offset: Offset(0, 1),
                      blurRadius: 16,
                    ),
                  ),
                  rangeTrackShape:
                      AppRangeSliderTrackShape(boundsMarkVerticalPadding: -4),
                ),
                child: CompositedTransformTarget(
                  link: _layerLink,
                  child: RangeSlider(
                    onChanged: _handleSliderChanged,
                    onChangeEnd: _handleSliderChangeEnd,
                    values: sliderValues,
                    min: widget.bounds.start,
                    max: widget.bounds.end,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            _BoundsInfo(
              start: '${widget.bounds.start.toInt().toString()} \u20BD',
              end: '${widget.bounds.end.toInt().toString()} \u20BD',
            ),
          ],
        ),
      ),
    );
  }

  void showTooltip(Thumb thumb) {
    _tooltipVisibility[thumb] = true;
    _tooltipEntries[thumb]?.markNeedsBuild();
  }

  void hideTooltip(Thumb thumb) {
    _tooltipVisibility[thumb] = false;
    _tooltipEntries[thumb]?.markNeedsBuild();
  }

  void _handleSliderChanged(RangeValues values) {
    Thumb? activeThumb;

    if (sliderValues.start != values.start) {
      _tooltipEntries[Thumb.start]?.markNeedsBuild();
      activeThumb = Thumb.start;
      if (_shouldShowTooltip(Thumb.start)) {
        showTooltip(Thumb.start);
      }
    } else if (sliderValues.end != values.end) {
      _tooltipEntries[Thumb.end]?.markNeedsBuild();
      activeThumb = Thumb.end;
      if (_shouldShowTooltip(Thumb.end)) {
        showTooltip(Thumb.end);
      }
    }

    if (_lastActiveThumb != activeThumb && activeThumb != null) {
      _tooltipEntries[activeThumb]?.remove();
      Overlay.of(context).insert(
        _tooltipEntries[activeThumb]!,
        above: _tooltipEntries[_lastActiveThumb],
      );
    }

    setState(() {
      sliderValues = values;
      _lastActiveThumb = activeThumb;
    });
  }

  void _handleSliderChangeEnd(RangeValues values) {
    widget.onChanged(_round(values));
    for (final thumb in Thumb.values) {
      if (_shouldHideTooltip(thumb)) {
        hideTooltip(thumb);
      }
    }
  }

  RangeValues _round(RangeValues values) {
    return RangeValues(
      values.start.roundToDouble(),
      values.end.roundToDouble(),
    );
  }

  bool _shouldShowTooltip(Thumb thumb) {
    return _shouldDrawTooltip(thumb) && !_tooltipVisibility[thumb]!;
  }

  bool _shouldHideTooltip(Thumb thumb) {
    return !_shouldDrawTooltip(thumb) && _tooltipVisibility[thumb]!;
  }

  bool _shouldDrawTooltip(Thumb thumb) {
    return thumb == Thumb.start
        ? sliderValues.start != widget.bounds.start
        : sliderValues.end != widget.bounds.end;
  }

  String _createLabelFor(Thumb thumb) {
    return thumb == Thumb.start
        ? '${sliderValues.start.round().toString()} \u20BD'
        : '${sliderValues.end.round().toString()} \u20BD';
  }

  double _getValueOffsetFor(Thumb thumb) {
    return thumb == Thumb.start
        ? _calcValueOffset(sliderValues.start)
        : _calcValueOffset(sliderValues.end);
  }

  double _calcValueOffset(double value) {
    final offsetValue = value - widget.bounds.start;
    final offset = trackWidth * offsetValue / _trackLength;

    return offset;
  }

  double get _trackLength => widget.bounds.end - widget.bounds.start;

  OverlayEntry _createTooltipEntry(Thumb thumb) {
    return OverlayEntry(
      builder: (context) {
        return CompositedTransformFollower(
          showWhenUnlinked: false,
          link: _layerLink,
          child: Opacity(
            opacity: _tooltipVisibility[thumb]! ? 1 : 0,
            child: CustomSingleChildLayout(
              delegate: _TooltipLayoutDelegate(
                valueOffset: _getValueOffsetFor(thumb),
              ),
              child: AppTooltip(
                title: _createLabelFor(thumb),
                position: AppTooltipPosition.belowContent,
                textColor: AppColors.kOxford60,
                color: AppColors.kBaseWhite,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    for (final thumb in Thumb.values) {
      _tooltipEntries[thumb]?.remove();
    }
    super.dispose();
  }
}

class _TooltipLayoutDelegate extends SingleChildLayoutDelegate {
  _TooltipLayoutDelegate({
    required this.valueOffset,
  });

  final double valueOffset;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // we allow our child to be smaller than parent's constraint:
    return constraints.loosen();
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(
      valueOffset - childSize.width / 2,
      _kThumbRadius * 2 + _kTooltipPadding,
    );
  }

  @override
  bool shouldRelayout(_TooltipLayoutDelegate oldDelegate) =>
      oldDelegate.valueOffset != valueOffset;
}

class _PopularityStats extends StatelessWidget {
  const _PopularityStats({
    Key? key,
    required this.stats,
    required this.filterValues,
    required this.bounds,
  }) : super(key: key);

  final List<int> stats;
  final RangeValues filterValues;
  final RangeValues bounds;

  @override
  Widget build(BuildContext context) {
    final step = (bounds.end - bounds.start) / (stats.length - 1);
    final maxCount = stats.reduce(math.max);

    final lines = <Widget>[];
    for (var i = 0; i < stats.length; i++) {
      final statsValue = (step * i) + bounds.start;
      final widget = Container(
        height: (stats[i] * _kStatsMaxHeight) / maxCount,
        width: 1,
        color:
            (filterValues.start <= statsValue && statsValue <= filterValues.end)
                ? AppColors.kSidePurple
                : AppColors.kOxford20,
      );
      lines.add(widget);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: lines,
    );
  }
}

class _BoundsInfo extends StatelessWidget {
  const _BoundsInfo({
    Key? key,
    required this.start,
    required this.end,
  }) : super(key: key);

  final String start;
  final String end;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
      child: Row(
        children: [
          _buildBound(start, CrossAxisAlignment.start),
          _buildBound(end, CrossAxisAlignment.end),
        ],
      ),
    );
  }

  Widget _buildBound(String text, CrossAxisAlignment alignment) {
    return Expanded(
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          Text(text),
        ],
      ),
    );
  }
}

class AppRangeSliderThumbShape extends RangeSliderThumbShape {
  AppRangeSliderThumbShape({
    required this.shadow,
    required this.color,
  });

  final BoxShadow shadow;
  final Color color;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.square(_kThumbRadius * 2);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    bool? isEnabled,
    bool? isOnTop,
    TextDirection? textDirection,
    SliderThemeData? sliderTheme,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final path = Path()
      ..addOval(
        Rect.fromCircle(center: center, radius: _kThumbRadius),
      );

    context.canvas.drawPath(path, shadow.toPaint());
    context.canvas.drawPath(path, Paint()..color = color);
  }
}

class AppRangeSliderTrackShape extends RangeSliderTrackShape {
  AppRangeSliderTrackShape({required this.boundsMarkVerticalPadding});

  final double boundsMarkVerticalPadding;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool? isEnabled,
    bool? isDiscrete,
  }) {
    final markHeight = boundsMarkVerticalPadding + _kBoundsVerticalMarkHeight;
    return Rect.fromLTWH(
      offset.dx,
      (offset.dy + parentBox.size.height / 2) - (markHeight / 2),
      parentBox.size.width,
      sliderTheme.trackHeight ?? 0 + markHeight,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    Animation<double>? enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
    TextDirection? textDirection,
  }) {
    const radius = Radius.circular(.5);
    final topPadding = offset.dy + parentBox.size.height / 2;

    final inactivePaint = Paint()
      ..color = sliderTheme.inactiveTrackColor ?? const Color(0x0000003d);
    final activePaint = Paint()
      ..color = sliderTheme.activeTrackColor ?? const Color(0x000000ff);

    final leftInactiveRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      offset.dy + parentBox.size.height / 2,
      startThumbCenter.dx,
      topPadding + (sliderTheme.trackHeight ?? 2.0),
      topLeft: radius,
      bottomLeft: radius,
    );

    final rightInactiveRRect = RRect.fromLTRBAndCorners(
      endThumbCenter.dx,
      topPadding,
      parentBox.paintBounds.right,
      topPadding + (sliderTheme.trackHeight ?? 2.0),
      topRight: radius,
      bottomRight: radius,
    );

    final activeRect = Rect.fromLTRB(
      startThumbCenter.dx,
      topPadding,
      endThumbCenter.dx,
      topPadding + (sliderTheme.trackHeight ?? 2.0),
    );

    final leftMarkRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      topPadding + (sliderTheme.trackHeight ?? 2.0) + boundsMarkVerticalPadding,
      offset.dx + _kBoundsVerticalMarkWidth,
      topPadding +
          (sliderTheme.trackHeight ?? 2.0) +
          boundsMarkVerticalPadding +
          _kBoundsVerticalMarkHeight,
    );

    final rightMarkRRect = RRect.fromLTRBAndCorners(
      parentBox.paintBounds.right - _kBoundsVerticalMarkWidth,
      topPadding + (sliderTheme.trackHeight ?? 2.0) + boundsMarkVerticalPadding,
      parentBox.paintBounds.right,
      topPadding +
          (sliderTheme.trackHeight ?? 2.0) +
          boundsMarkVerticalPadding +
          _kBoundsVerticalMarkHeight,
    );

    context.canvas.drawRRect(leftInactiveRRect, inactivePaint);
    context.canvas.drawRRect(rightInactiveRRect, inactivePaint);
    context.canvas.drawRRect(leftMarkRRect, inactivePaint);
    context.canvas.drawRRect(rightMarkRRect, inactivePaint);
    context.canvas.drawRect(activeRect, activePaint);
  }
}

enum AppTooltipPosition { belowContent, aboveContent }

class AppTooltip extends StatelessWidget {
  const AppTooltip({
    Key? key,
    required this.title,
    this.position = AppTooltipPosition.aboveContent,
    this.color,
    this.textColor,
  }) : super(key: key);

  final String title;
  final AppTooltipPosition position;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final painter = AppTooltipPainter.withDefaultStyle(
      color: color ?? AppColors.kBaseWhite,
      shadow: const BoxShadow(
        color: AppColors.kOxford20,
        offset: Offset(0, 1),
        blurRadius: 16,
      ),
      text: title,
      textColor: textColor ?? AppColors.kPrimaryBlue,
      position: position,
    );

    return CustomPaint(
      painter: painter,
      child: SizedBox.fromSize(
        size: painter.realSize,
      ),
    );
  }
}

class AppTooltipPainter extends SelfSizedCustomPainter {
  AppTooltipPainter({
    required this.shadow,
    required this.color,
    this.text = '',
    EdgeInsets textPadding = EdgeInsets.zero,
    this.textStyle = const TextStyle(),
    this.position = AppTooltipPosition.aboveContent,
    this.scaleFactor = 1,
    EdgeInsets padding = EdgeInsets.zero,
  })  : _textPadding = textPadding,
        _padding = padding;

  factory AppTooltipPainter.withDefaultStyle({
    required BoxShadow shadow,
    required Color color,
    required Color textColor,
    String text = '',
    AppTooltipPosition position = AppTooltipPosition.aboveContent,
    double scaleFactor = 1,
    EdgeInsets padding = EdgeInsets.zero,
  }) {
    const textPadding = EdgeInsets.symmetric(vertical: 8, horizontal: 12);
    return AppTooltipPainter(
      shadow: shadow,
      color: color,
      text: text,
      textPadding: textPadding,
      textStyle: AppTypography.kBody14.apply(color: textColor),
      position: position,
      scaleFactor: scaleFactor,
      padding: padding,
    );
  }

  final BoxShadow shadow;
  final Color color;
  final String text;
  final EdgeInsets _textPadding;
  final EdgeInsets _padding;
  final TextStyle textStyle;
  final AppTooltipPosition position;

  /// All sizes will be multiplied by this factor
  final double scaleFactor;

  EdgeInsets get padding => _padding;
  EdgeInsets get textPadding => _textPadding * scaleFactor;
  Size get triangleSize => const Size(16, 9) * scaleFactor;
  @override
  Size get realSize => Size(
        textPainter!.width + textPadding.horizontal + padding.horizontal,
        textPainter!.height +
            textPadding.vertical +
            padding.vertical +
            triangleSize.height,
      );

  TextPainter? _textPainter;
  TextPainter? get textPainter {
    if (_textPainter == null) {
      _textPainter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: text,
          style:
              textStyle.copyWith(fontSize: textStyle.fontSize! * scaleFactor),
        ),
      );
      _textPainter!.layout();
    }
    return _textPainter;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var verticalOffset = 0.0;
    if (position == AppTooltipPosition.belowContent) {
      verticalOffset = triangleSize.height;
    }

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final shadowPaint = shadow.toPaint();

    Path path(Offset offset) => Path()
      ..addPath(
        _calculateTrianglePath(padding.deflateSize(realSize)),
        offset,
      )
      ..addPath(
        _calculateOvalPath(
          padding.deflateSize(
            Size(realSize.width, realSize.height - triangleSize.height),
          ),
        ),
        offset.translate(0, verticalOffset),
      );

    final shadowOffset = shadow.offset + padding.topLeft;
    final textOffset =
        textPadding.topLeft + padding.topLeft + Offset(0, verticalOffset);

    canvas.drawPath(path(shadowOffset), shadowPaint);
    canvas.drawPath(path(padding.topLeft), fillPaint);
    textPainter!.paint(canvas, textOffset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  Path _calculateTrianglePath(Size size) {
    const radius = 1.0;

    double radiusOffset;
    Offset triangleTop;

    if (position == AppTooltipPosition.belowContent) {
      triangleTop = size.topCenter(Offset.zero);
      radiusOffset = radius;
    } else {
      triangleTop = size.bottomCenter(Offset.zero);
      radiusOffset = -radius;
    }

    Offset triangleCircleCenter;
    Offset triangleTopLeft;
    Offset triangleTopRight;
    Offset triangleBottomLeft;
    Offset triangleBottomRight;

    triangleCircleCenter = triangleTop.translate(0, radiusOffset);

    triangleTopLeft = Offset(
      triangleCircleCenter.dx - (radius * 131 / 192),
      triangleCircleCenter.dy - (radiusOffset * 140 / 192),
    );
    triangleTopRight = Offset(
      triangleCircleCenter.dx + (radius * 131 / 192),
      triangleCircleCenter.dy - (radiusOffset * 140 / 192),
    );

    triangleBottomLeft = triangleTop.translate(
      -triangleSize.width / 2,
      triangleSize.height * radiusOffset,
    );
    triangleBottomRight = triangleTop.translate(
      triangleSize.width / 2,
      triangleSize.height * radiusOffset,
    );

    /// If we will not inverse points order, part of
    /// circle with [radius] does not filled
    Path trianglePath;
    // ignore: prefer-conditional-expressions
    if (position == AppTooltipPosition.belowContent) {
      trianglePath = Path()
        ..moveTo(triangleTopLeft.dx, triangleTopLeft.dy)
        ..lineTo(triangleTopRight.dx, triangleTopRight.dy)
        ..lineTo(triangleBottomRight.dx, triangleBottomRight.dy)
        ..lineTo(triangleBottomLeft.dx, triangleBottomLeft.dy)
        ..lineTo(triangleTopLeft.dx, triangleTopLeft.dy);
    } else {
      trianglePath = Path()
        ..moveTo(triangleTopLeft.dx, triangleTopLeft.dy)
        ..lineTo(triangleBottomLeft.dx, triangleBottomLeft.dy)
        ..lineTo(triangleBottomRight.dx, triangleBottomRight.dy)
        ..lineTo(triangleTopRight.dx, triangleTopRight.dy)
        ..lineTo(triangleTopLeft.dx, triangleTopLeft.dy);
    }
    trianglePath.addOval(
      Rect.fromCircle(
        center: triangleCircleCenter,
        radius: radius,
      ),
    );

    return trianglePath;
  }

  Path _calculateOvalPath(Size size) {
    final radius = size.height / 2;

    Offset leftCircleCenter;
    Offset rightCircleCenter;
    Offset rectLeftTop;
    Offset rectRightBottom;

    leftCircleCenter = size.centerLeft(
      Offset(radius, 0),
    );
    rightCircleCenter = size.centerRight(
      Offset(-radius, 0),
    );

    rectLeftTop = leftCircleCenter.translate(0, radius);
    rectRightBottom = rightCircleCenter.translate(0, -radius);

    final ovalPath = Path()
      ..addOval(Rect.fromCircle(
        center: leftCircleCenter,
        radius: radius,
      ))
      ..addRect(Rect.fromPoints(rectLeftTop, rectRightBottom))
      ..addOval(Rect.fromCircle(
        center: rightCircleCenter,
        radius: radius,
      ));

    return ovalPath;
  }
}
