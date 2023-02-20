import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double _kThumbRadius = 12;
const double _kBoundsVerticalMarkHeight = 4;
const double _kBoundsVerticalMarkWidth = 1;

abstract class AppThemes {
  static ThemeData get lightAppTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.kBaseWhite,
        shadowColor: AppColors.kBaseWhite.withOpacity(.12),
        centerTitle: true,
        titleTextStyle: AppTypography.kH16.apply(color: AppColors.kOxford),
        iconTheme: const IconThemeData(
          color: AppColors.kBaseBlack,
        ),
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.kPrimaryBlue,
        onPrimary: AppColors.kBaseWhite,
        secondary: AppColors.kBaseBlack,
        onSecondary: AppColors.kBaseWhite,
        error: AppColors.kPrimaryRed,
        onError: AppColors.kBaseWhite,
        background: AppColors.kBaseWhite,
        onBackground: AppColors.kBaseBlack,
        surface: AppColors.kBaseWhite,
        onSurface: AppColors.kBaseBlack,
      ),
      elevatedButtonTheme: _elevatedButtonThemeData(),
      outlinedButtonTheme: _outlinedButtonThemeData(),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.kPrimaryBlue,
        thumbColor: AppColors.kPrimaryBlue,
        trackHeight: 1,
        inactiveTrackColor: AppColors.kOxford20,
        overlayShape: const AppSliderOverlayShape(),
        showValueIndicator: ShowValueIndicator.never,
        valueIndicatorColor: Colors.black,
        valueIndicatorShape: AppSliderThumbShape(
          color: AppColors.kPrimaryBlue,
          shadow: const BoxShadow(
            color: AppColors.kOxford20,
            offset: Offset(0, 1),
            blurRadius: 16,
          ),
        ),
        rangeThumbShape: AppRangeSliderThumbShape(
          color: AppColors.kPrimaryBlue,
          shadow: const BoxShadow(
            color: AppColors.kOxford20,
            offset: Offset(0, 1),
            blurRadius: 16,
          ),
        ),
        rangeTrackShape: AppRangeSliderTrackShape(
          boundsMarkVerticalPadding: 8,
        ),
        thumbShape: AppSliderThumbShape(
          color: AppColors.kPrimaryBlue,
          shadow: const BoxShadow(
            color: AppColors.kOxford20,
            offset: Offset(0, 1),
            blurRadius: 16,
          ),
        ),
        trackShape: AppSliderTrackShape(
          boundsMarkVerticalPadding: 8,
        ),
      ),
      textButtonTheme: const TextButtonThemeData(style: ButtonStyle()),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused)) {
              return const BorderSide(color: AppColors.kOxford);
            } else if (states.contains(MaterialState.pressed)) {
              return const BorderSide(color: AppColors.kOxford);
            } else if (states.contains(MaterialState.disabled)) {
              return const BorderSide(color: AppColors.kOxford10);
            }
            return const BorderSide(color: AppColors.kOxford20);
          },
        ),
        shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppColors.kBaseBlack));
        }),
        textStyle: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppTypography.kH14;
            }
            return AppTypography.kH14;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.kOxford20;
            } else if (states.contains(MaterialState.pressed)) {
              return AppColors.kOxford;
            }
            return AppColors.kOxford60;
          },
        ),
        shadowColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused)) {
              return AppColors.kElevatedButtonFocusedStateLight;
            }
            return null;
          },
        ),
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          );
        }),
        textStyle: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppTypography.kH14;
            }
            return AppTypography.kH14;
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused)) {
              return AppColors.kElevatedButtonFocusedStateLight;
            } else if (states.contains(MaterialState.pressed)) {
              return AppColors.kElevatedButtonActiveStateLight;
            } else if (states.contains(MaterialState.disabled)) {
              return AppColors.kOxford10;
            }
            return AppColors.kPrimaryBlue;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.kOxford40;
            }
            return AppColors.kBaseWhite;
          },
        ),
        shadowColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.focused)) {
              return AppColors.kElevatedButtonFocusedStateLight;
            }
            return null;
          },
        ),
      ),
    );
  }
}

class AppSliderOverlayShape extends SliderComponentShape {
  /// Create a slider thumb overlay that draws a circle.
  const AppSliderOverlayShape({this.overlayRadius = 24.0});

  /// The preferred radius of the round thumb shape when enabled.
  ///
  /// If it is not provided, then half of the [SliderThemeData.trackHeight] is
  /// used.
  final double overlayRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(overlayRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: 0.0,
      end: overlayRadius,
    );

    canvas.drawCircle(
      center,
      radiusTween.evaluate(activationAnimation),
      Paint()..color = Colors.transparent,
    );
  }
}

class AppSliderThumbShape extends SliderComponentShape {
  AppSliderThumbShape({
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
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final path = Path()
      ..addOval(
        Rect.fromCircle(center: center, radius: _kThumbRadius),
      );

    context.canvas.drawPath(path, shadow.toPaint());
    context.canvas.drawPath(path, Paint()..color = color);
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
      sliderTheme.trackHeight! + markHeight,
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

    final inactivePaint = Paint()..color = sliderTheme.inactiveTrackColor!;
    final activePaint = Paint()..color = sliderTheme.activeTrackColor!;

    final leftInactiveRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      offset.dy + parentBox.size.height / 2,
      startThumbCenter.dx,
      topPadding + sliderTheme.trackHeight!,
      topLeft: radius,
      bottomLeft: radius,
    );

    final rightInactiveRRect = RRect.fromLTRBAndCorners(
      endThumbCenter.dx,
      topPadding,
      parentBox.paintBounds.right,
      topPadding + sliderTheme.trackHeight!,
      topRight: radius,
      bottomRight: radius,
    );

    final activeRect = Rect.fromLTRB(
      startThumbCenter.dx,
      topPadding,
      endThumbCenter.dx,
      topPadding + sliderTheme.trackHeight!,
    );

    final leftMarkRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      topPadding + sliderTheme.trackHeight! + boundsMarkVerticalPadding,
      offset.dx + _kBoundsVerticalMarkWidth,
      topPadding +
          sliderTheme.trackHeight! +
          boundsMarkVerticalPadding +
          _kBoundsVerticalMarkHeight,
    );

    final rightMarkRRect = RRect.fromLTRBAndCorners(
      parentBox.paintBounds.right - _kBoundsVerticalMarkWidth,
      topPadding + sliderTheme.trackHeight! + boundsMarkVerticalPadding,
      parentBox.paintBounds.right,
      topPadding +
          sliderTheme.trackHeight! +
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

class AppSliderTrackShape extends SliderTrackShape {
  AppSliderTrackShape({required this.boundsMarkVerticalPadding});

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
      sliderTheme.trackHeight! + markHeight,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool? isEnabled,
    bool? isDiscrete,
    required TextDirection textDirection,
  }) {
    const radius = Radius.circular(.5);
    final topPadding = offset.dy + parentBox.size.height / 2;

    final inactivePaint = Paint()..color = sliderTheme.inactiveTrackColor!;
    final activePaint = Paint()..color = sliderTheme.activeTrackColor!;

    final inactiveRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      topPadding,
      parentBox.paintBounds.right,
      topPadding + sliderTheme.trackHeight!,
      topRight: radius,
      bottomRight: radius,
    );

    final activeRect = Rect.fromLTRB(
      offset.dx,
      topPadding,
      offset.dx,
      topPadding + sliderTheme.trackHeight!,
    );

    final leftMarkRRect = RRect.fromLTRBAndCorners(
      offset.dx,
      topPadding + sliderTheme.trackHeight! + boundsMarkVerticalPadding,
      offset.dx + _kBoundsVerticalMarkWidth,
      topPadding +
          sliderTheme.trackHeight! +
          boundsMarkVerticalPadding +
          _kBoundsVerticalMarkHeight,
    );

    final rightMarkRRect = RRect.fromLTRBAndCorners(
      parentBox.paintBounds.right - _kBoundsVerticalMarkWidth,
      topPadding + sliderTheme.trackHeight! + boundsMarkVerticalPadding,
      parentBox.paintBounds.right,
      topPadding +
          sliderTheme.trackHeight! +
          boundsMarkVerticalPadding +
          _kBoundsVerticalMarkHeight,
    );

    context.canvas.drawRRect(inactiveRRect, inactivePaint);
    context.canvas.drawRRect(leftMarkRRect, inactivePaint);
    context.canvas.drawRRect(rightMarkRRect, inactivePaint);
    context.canvas.drawRect(activeRect, activePaint);
  }
}
