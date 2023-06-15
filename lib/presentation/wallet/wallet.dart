import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/presentation/dialogs/wallet_balance_info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class Wallet extends StatelessWidget with UserMixin {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(AppIcons.arr_big_left),
          onPressed: () => context.pop(),
        ),
        title: const Text('Кошелек', style: AppTypography.kH16),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            _currentBalance(context),
            const SizedBox(height: 40),
            const Text('Следующее пополнение', style: AppTypography.kH16),
            const SizedBox(height: 6),
            Text(
              DateTimeUtils.dateFormatDetailed
                  .format(userSnapshot!.wallet!.nextReplenishment),
              style:
                  AppTypography.kParagraph16.apply(color: AppColors.kOxford60),
            ),
            const SizedBox(height: 32),
            const Text(
              'Информация об организации',
              style: AppTypography.kH16,
            ),
            const SizedBox(height: 14),
            Text(
              '${userSnapshot!.wallet!.organizationLabel} ${userSnapshot!.wallet!.organizationDescription}',
              style:
                  AppTypography.kParagraph16.apply(color: AppColors.kOxford60),
            ),
          ],
        ),
      ),
    );
  }

  Widget _currentBalance(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: ShapeDecoration(
        shape: SuperellipseShape(
          borderRadius: superellipseRadius(12),
        ),
        gradient: const LinearGradient(
          colors: [
            AppColors.kGradientBlueDark,
            AppColors.kGradientPurpleLight,
            AppColors.kGradientRedLight,
          ],
        ),
      ),
      child: Row(
        children: [
          const Icon(AppIcons.coolair, color: Colors.white),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Остаток в кошельке',
                style: AppTypography.kBody14.apply(color: Colors.white),
              ),
              Text(
                userSnapshot!.wallet!.currentBalanceInRub,
                style: AppTypography.kH24B.apply(color: Colors.white),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          TextButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (context) {
                  return const WalletBalanceInfoDialog();
                },
              );
            },
            child: Text(
              'Что это такое?',
              style: AppTypography.kBody14.apply(
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
