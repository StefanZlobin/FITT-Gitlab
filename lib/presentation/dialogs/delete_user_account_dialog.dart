import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'success_delete_user_account_dialog.dart';

class DeleteUserAccountDialog extends StatelessWidget {
  const DeleteUserAccountDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kOxford),
      title: const Text('Удалить аккаунт'),
      contentPadding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kOxford),
      content: const Text(
        'Удалить ваш аккаунт и историю тренировок из сервиса FITT. Восстановить его будет невозможно',
        textAlign: TextAlign.start,
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 0, 24),
      actions: [
        Row(
          children: [
            SizedBox(
              height: 48,
              child: OutlinedButton(
                onPressed: () => context.pop(),
                child: Text(
                  'Отменить',
                  style:
                      AppTypography.kBody14.apply(color: AppColors.kOxford60),
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 178,
              height: 48,
              child: AppElevatedButton(
                onPressedAsync: () async {
                  await getIt<UserRepository>().deleteUser().then((_) {
                    showDialog<void>(
                      useRootNavigator: false,
                      context: context,
                      builder: (context) {
                        return const SuccessDeleteUserAccountDialog();
                      },
                    );
                  });
                },
                marginButton: const EdgeInsets.all(0),
                textButton: Text(
                  'Удалить аккаунт',
                  style:
                      AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
