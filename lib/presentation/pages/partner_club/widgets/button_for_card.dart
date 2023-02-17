import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class ButtonForCard extends StatelessWidget {
  const ButtonForCard({
    super.key,
    required this.isBig,
    required this.workoutSlot,
    required this.onPressed,
    this.showIconOnButton = true,
  });

  final bool isBig;
  final String workoutSlot;
  final VoidCallback onPressed;
  final bool showIconOnButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48,
        width: isBig ? 208 : 100,
        padding: showIconOnButton
            ? const EdgeInsets.symmetric(horizontal: 16)
            : null,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.kBaseWhite),
          color: AppColors.kBaseWhite.withOpacity(.12),
        ),
        child: Row(
          mainAxisAlignment: showIconOnButton
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(
              workoutSlot,
              style: AppTypography.kH14.apply(color: AppColors.kBaseWhite),
            ),
            if (showIconOnButton)
              const Icon(
                AppIcons.arr_right,
                size: 10,
                color: AppColors.kBaseWhite,
              ),
          ],
        ),
      ),
    );
  }
}
