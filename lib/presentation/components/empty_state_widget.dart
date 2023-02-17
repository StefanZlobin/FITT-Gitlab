import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({
    Key? key,
    required this.mainText,
    required this.offerText,
    this.icon = const SizedBox(),
    this.onPressed,
  }) : super(key: key);

  final String mainText;
  final String offerText;
  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    mainText,
                    style:
                        AppTypography.kBody14.apply(color: AppColors.kOxford60),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),
                icon,
                TextButton(
                  onPressed: () {
                    onPressed?.call();
                    context.pop();
                  },
                  child: Text(
                    offerText,
                    style: AppTypography.kH14.apply(
                      color: AppColors.kPrimaryBlue,
                    ),
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
