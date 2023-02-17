import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ChipFilter extends StatelessWidget {
  const ChipFilter({
    Key? key,
    required this.isActive,
    required this.onPressed,
    required this.selectedSlot,
    required this.isBig,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isActive;
  final String selectedSlot;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: isBig ? 109 : 68,
        margin: const EdgeInsets.only(right: 8),
        decoration: ShapeDecoration(
          color: isActive ? AppColors.kPrimaryBlue : Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: BorderSide(
                color: isActive ? AppColors.kPrimaryBlue : AppColors.kOxford20),
          ),
        ),
        child: Center(
          child: Text(
            selectedSlot,
            style: AppTypography.kBody14.apply(
                color: isActive ? AppColors.kBaseWhite : AppColors.kOxford60),
          ),
        ),
      ),
    );
  }
}
