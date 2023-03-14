import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/entities/club/partner_club.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClubBuyWorkoutDisclaimer extends StatelessWidget {
  const ClubBuyWorkoutDisclaimer({
    super.key,
    required this.club,
    this.padding = const EdgeInsets.fromLTRB(16, 0, 16, 0),
  });

  final PartnerClub club;
  final EdgeInsets padding;

  //TODO: add cancellation policy document and user agreements from [club.documents]
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text.rich(
        style: AppTypography.kBody14.apply(
          color: AppColors.kOxford,
        ),
        textAlign: TextAlign.start,
        TextSpan(
          text: 'Нажимая кнопку “Оплатить” вы принимаете условия',
          children: [
            TextSpan(
              text: ' пользовательского соглашения ',
              style: AppTypography.kBody14.apply(
                color: AppColors.kPrimaryBlue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(AppRoute.webview.routeToPath,
                      queryParams: <String, String>{
                        'url': club.documents?.first.fileUrl ?? '',
                        'pageTitle': club.documents?.first.documentLabel ?? '',
                      },);
                },
            ),
            const TextSpan(text: 'и подтверждаете, что вам больше 18 лет'),
          ],
        ),
      ),
    );
  }
}
