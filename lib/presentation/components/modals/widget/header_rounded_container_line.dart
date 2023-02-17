import 'package:fitt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderRoundedContainerLine extends StatelessWidget {
  const HeaderRoundedContainerLine({
    super.key,
    this.bigPadding = true,
  });

  final bool bigPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 5,
      margin: bigPadding
          ? const EdgeInsets.only(top: 16, bottom: 51)
          : const EdgeInsets.only(top: 16, bottom: 19),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.kOxford20,
      ),
    );
  }
}
