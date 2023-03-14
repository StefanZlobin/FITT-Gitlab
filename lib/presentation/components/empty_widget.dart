import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    required this.hintText,
    required this.buttonText,
    required this.onPressed,
  });

  final String hintText;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 175,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    hintText,
                    style: AppTypography.kBody14.apply(color: AppColors.kOxford60),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonText,
                    style: AppTypography.kH14.apply(color: AppColors.kPrimaryPurple),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
