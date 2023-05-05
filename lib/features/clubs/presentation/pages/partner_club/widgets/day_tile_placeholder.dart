import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class DayTilePlaceholder extends StatelessWidget {
  const DayTilePlaceholder({
    Key? key,
    required this.whenAvailable,
  }) : super(key: key);

  final String whenAvailable;

  @override
  Widget build(BuildContext context) {
    const textColor = AppColors.kOxford40;
    const dividerColor = AppColors.kOxford10;
    const bgColor = AppColors.kBaseWhite;
    const borderColor = AppColors.kOxford10;

    return Container(
      height: 144,
      width: 96,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      decoration: ShapeDecoration(
        shape: SuperellipseShape(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: borderColor),
        ),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              whenAvailable,
              style: AppTypography.kBody14.apply(color: textColor),
            ),
            const Expanded(child: SizedBox()),
            Container(
              width: 24,
              height: 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: dividerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
