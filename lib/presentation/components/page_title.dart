import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget implements PreferredSizeWidget {
  const PageTitle({
    super.key,
    this.leading = const SizedBox(),
    required this.title,
  });

  final Widget leading;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: DefaultTextStyle(
        style: AppTypography.kH14.apply(color: AppColors.kOxford),
        child: title,
      ),
    );
  }

  static const size = Size.fromHeight(56);
  @override
  Size get preferredSize => size;
}
