import 'package:fitt/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Future<void> showAppModalBottomSheet(
  BuildContext context,
  Widget content,
) async {
  await showModalBottomSheet<void>(
    backgroundColor: AppColors.kBaseWhite,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) {
      return content;
    },
  );
}
