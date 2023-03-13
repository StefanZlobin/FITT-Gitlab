import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessDeleteUserAccountDialog extends StatelessWidget {
  const SuccessDeleteUserAccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      titlePadding: const EdgeInsets.fromLTRB(24, 24, 0, 0),
      titleTextStyle: AppTypography.kH18.apply(color: AppColors.kBaseBlack),
      title: const Text('Аккаунт успешно удален'),
      contentPadding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
      contentTextStyle: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
      content: const Text(
        'Ваш аккаунт и история тренировок удалены из сервиса FITT',
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      actions: [
        AppElevatedButton(
          onPressed: () {
            context.push(AppRoute.map.routeToPath);
          },
          marginButton: const EdgeInsets.all(0),
          textButton: Text(
            'Готово',
            style: AppTypography.kBody14.apply(color: AppColors.kBaseWhite),
          ),
        ),
      ],
    );
  }
}
