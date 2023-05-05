import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class AdminMenuTile extends StatelessWidget {
  const AdminMenuTile({
    super.key,
    this.onPressed,
    required this.title,
    this.subtitle,
    this.trailing,
    this.leading,
  });

  final VoidCallback? onPressed;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DefaultTextStyle(
        style: AppTypography.kBody14.apply(color: AppColors.kOxford),
        child: title,
      ),
      subtitle: DefaultTextStyle(
        style: AppTypography.kBody14.apply(color: AppColors.kOxford40),
        child: subtitle ?? const SizedBox(),
      ),
      leading: leading,
      trailing: trailing,
      onTap: onPressed,
    );
  }
}
