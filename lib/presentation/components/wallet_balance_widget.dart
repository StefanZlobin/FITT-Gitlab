import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class WalletBalanceWidget extends StatelessWidget with UserMixin {
  const WalletBalanceWidget({
    super.key,
    required this.margin,
  });

  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: margin,
      decoration: ShapeDecoration(
        shape: SuperellipseShape(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        gradient: const LinearGradient(
          colors: [
            AppColors.kGradientBlueDark,
            AppColors.kGradientPurpleLight,
            AppColors.kGradientRedLight,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(AppIcons.coolair, color: Colors.white, size: 16),
            const SizedBox(width: 8),
            Text(
              userSnapshot!.wallet!.currentBalanceInRub,
              style: AppTypography.kBody14.apply(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
