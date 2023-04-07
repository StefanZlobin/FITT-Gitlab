import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/domain/entities/batch/user_batch.dart';
import 'package:fitt/presentation/components/modals/widget/header_rounded_container_line.dart';
import 'package:fitt/presentation/dialogs/cancel_batch_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CancelBatchModalBottomSheet extends StatelessWidget {
  const CancelBatchModalBottomSheet({
    super.key,
    required this.userBatch,
  });

  final UserBatch userBatch;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          const HeaderRoundedContainerLine(
            bigPadding: false,
          ),
          GestureDetector(
            onTap: () {
              showDialog<void>(
                useRootNavigator: false,
                context: context,
                builder: (context) {
                  return CancelBatchDialog(userBatch: userBatch);
                },
              ).then((_) => context.pop());
            },
            child: Row(
              children: [
                const SizedBox(width: 24),
                SizedBox(
                  height: 56,
                  child: Center(
                    child: Text(
                      userBatch.canCancell
                          ? 'Отменить покупку пакета'
                          : 'Невозможно отменить пакет\nC момента покупки прошли сутки\nИли Вы уже приобрели тренировку по этому пакету',
                      style: AppTypography.kBody14
                          .apply(color: AppColors.kBaseBlack),
                      softWrap: true,
                      maxLines: 3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
