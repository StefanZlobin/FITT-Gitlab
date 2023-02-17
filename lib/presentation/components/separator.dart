import 'package:fitt/core/constants/app_colors.dart';
import 'package:flutter/widgets.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key? key,
    this.width = double.infinity,
    this.height = 1,
    this.color,
    this.borderColor,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  }) : super(key: key);

  final double width;
  final double height;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? AppColors.kOxford10,
          border: Border.all(color: color ?? AppColors.kOxford10),
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        ),
      ),
    );
  }
}
