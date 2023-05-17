import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class Wallet extends StatelessWidget {
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
            walletPageWidget(),
            const SizedBox(height: 40),
            const Text('Следующее пополнение', style: AppTypography.kH16),
            const SizedBox(height: 6),
            Text(
              '15 августа 2023',
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
              '«FITNESS CLUB» - это современный фитнес-клуб в Калининском районе Санкт-Петербурга, созданный в соответствии со всеми критериями обеспечения качества и комфорта тренировочного процесса...',
              style:
                  AppTypography.kParagraph16.apply(color: AppColors.kOxford60),
            ),
          ],
        ),
      ),
    );
  }
}

Widget walletPageWidget() {
  return Container(
    height: 64,
    decoration: ShapeDecoration(
      shape: SuperellipseShape(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
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
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                '27 690 р ',
                style: AppTypography.kH24B.apply(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 24),
          TextButton(
            onPressed: null,
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
    ),
  );
}
