import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class KPICard extends StatelessWidget {
  const KPICard({
    super.key,
    required this.cardLabel,
    required this.kpiValue,
  });

  final String kpiValue;
  final String cardLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 124,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: SuperellipseShape(
          borderRadius: superellipseRadius(24),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.kOxford10.withOpacity(0.9),
            blurRadius: 24,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cardLabel,
            style: AppTypography.kH16.apply(color: AppColors.kOxford60),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            kpiValue,
            style: AppTypography.kNum48.apply(color: AppColors.kOxford),
          ),
        ],
      ),
    );
  }
}
