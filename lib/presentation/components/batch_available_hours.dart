import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BatchAvailableHours extends StatelessWidget {
  const BatchAvailableHours({
    Key? key,
    required this.hours,
    this.isBig = true,
  }) : super(key: key);

  final double hours;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBig ? 32 : 24,
      padding: isBig
          ? const EdgeInsets.fromLTRB(4, 4, 5.5, 4)
          : const EdgeInsets.fromLTRB(1, 1, 5.5, 1),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.images.batch.image(filterQuality: FilterQuality.high),
          const SizedBox(width: 4),
          Text(
            '$hours',
            style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
          ),
        ],
      ),
    );
  }
}
