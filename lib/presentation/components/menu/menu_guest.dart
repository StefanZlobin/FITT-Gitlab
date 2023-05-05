import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuGuest extends StatelessWidget {
  const MenuGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Войдите или зарегистрируйтесь',
                  style: AppTypography.kH24B.apply(color: AppColors.kBaseBlack),
                ),
                const SizedBox(height: 16),
                Text(
                  'Покупка тренировок доступна только зарегистрированным пользователям',
                  style:
                      AppTypography.kBody14.apply(color: AppColors.kOxford60),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 272,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(AppRoute.inputPhoneNumber.routeToPath);
                    },
                    child: const Text('Вход'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
