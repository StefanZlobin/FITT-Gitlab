import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/fitt_links.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthUserDisclaimer extends StatelessWidget {
  const AuthUserDisclaimer({
    super.key,
    this.padding = const EdgeInsets.fromLTRB(0, 0, 0, 16),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text.rich(
        style: AppTypography.kBody14.apply(
          color: AppColors.kOxford,
        ),
        textAlign: TextAlign.center,
        TextSpan(
          text: 'Нажимая кнопку “Продолжить” вы принимаете условия',
          children: [
            TextSpan(
              text: ' пользовательского соглашения ',
              style: AppTypography.kBody14.apply(
                color: AppColors.kPrimaryPurple,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(AppRoute.webview.routeToPath,
                      queryParams: <String, String>{
                        'url': FittLinks.kUserTermsLinkDoc,
                        'pageTitle': 'Пользовательского соглашение',
                      });
                },
            ),
            const TextSpan(text: 'и подтверждаете, что вам больше 18 лет'),
          ],
        ),
      ),
    );
  }
}
