import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KPIInfoDialog extends StatelessWidget {
  const KPIInfoDialog({
    Key? key,
    required this.timeSlice,
    required this.label,
  }) : super(key: key);

  final String timeSlice;
  final String label;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titlePadding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      title: Text(label),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kOxford),
      content: Text(
        'Показывает рост или падение показателя "$label" по сравнению с $timeSlice',
      ),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      actions: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    'Ясненько',
                    style: AppTypography.kBody14
                        .apply(color: AppColors.kBaseWhite),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
