import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/clubs/domain/cubits/purchased_batch/purchased_batch_cubit.dart';
import 'package:fitt/features/clubs/domain/entities/batch/user_batch.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CancelBatchDialog extends StatelessWidget {
  const CancelBatchDialog({
    Key? key,
    required this.userBatch,
  }) : super(key: key);

  final UserBatch userBatch;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titlePadding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      title: const Text('Отменить покупку пакета?'),
      contentPadding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kOxford),
      content: const Text(
        'Пакет будет удален и вы не сможете пользоваться купленными часами, отменить покупку пакета?',
      ),
      actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      actions: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: OutlinedButton(
                  onPressed: () => context.pop(),
                  child: Text(
                    'Нет',
                    style:
                        AppTypography.kBody14.apply(color: AppColors.kOxford60),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                height: 48,
                child: AppElevatedButton(
                  isHeight: false,
                  onPressedAsync: () async {
                    await getIt<PurchasedBatchCubit>()
                        .cancelPurchasedBatch(
                          userBatch.uuid,
                          userBatch,
                        )
                        .then((_) => context.pop());
                  },
                  marginButton: const EdgeInsets.all(0),
                  textButton: Text(
                    'Да',
                    style: AppTypography.kBody14.apply(
                      color: AppColors.kBaseWhite,
                    ),
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
