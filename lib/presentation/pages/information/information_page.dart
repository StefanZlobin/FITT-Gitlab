import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/fitt_links.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class InformrationPage extends StatelessWidget {
  const InformrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L.of(context).informationPageTitle),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
        children: [
          TextButton(
            onPressed: () {
              context.push(AppRoute.feedback.routeToPath);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Обратиться в поддержку',
                  style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
                ),
                const Icon(
                  AppIcons.arr_right,
                  size: 16,
                  color: AppColors.kPrimaryBlue,
                ),
              ],
            ),
          ),
          const Separator(margin: EdgeInsets.symmetric(vertical: 16)),
          _buildTextButton(
            context,
            'Пользовательское соглашение',
            FittLinks.kUserTermsLinkDoc,
          ),
          const Separator(margin: EdgeInsets.symmetric(vertical: 16)),
          _buildTextButton(
            context,
            'Политика конфиденциальности',
            FittLinks.kUserPrivacyLinkDoc,
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton(BuildContext context, String docName, String docUrl) {
    return TextButton(
      onPressed: () async {
        final url = Uri.parse(docUrl);
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            docName,
            style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
          ),
          const Icon(
            AppIcons.arr_right,
            size: 16,
            color: AppColors.kPrimaryBlue,
          ),
        ],
      ),
    );
  }
}
