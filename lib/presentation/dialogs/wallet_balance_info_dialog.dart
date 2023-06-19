// ignore_for_file: use_build_context_synchronously

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WalletBalanceInfoDialog extends StatelessWidget {
  const WalletBalanceInfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titlePadding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      title: const Text('Остаток в кошельке'),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kOxford),
      content: const Text(
        'Это твой корпоративный кошелек. За его счет ты можешь оплатить тренировку. А еще, здесь ты будешь видеть свой остаток, который можешь тратить на покупку тренировок.',
      ),
      actionsPadding: const EdgeInsets.only(bottom: 24, right: 16, left: 16),
      actions: [
        AppElevatedButton(
          marginButton: const EdgeInsets.all(0),
          textButton: const Text('Ясно'),
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}
