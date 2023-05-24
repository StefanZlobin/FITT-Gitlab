import 'dart:io';

import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:launch_review/launch_review.dart';

Future<void> newAppVersionDialog({required BuildContext context}) async {
  await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      const title = 'Доступна новая версия приложения';
      const message = 'Для дальнейшего использования обновите приложение';
      const btnLabel = 'Обновите сейчас';
      const btnLabelCancel = 'Позже';

      return Platform.isIOS
          ? CupertinoAlertDialog(
              title: const Text(title, style: AppTypography.kH16),
              content: const Text(message, style: AppTypography.kBody14),
              actions: [
                Row(
                  children: [
                    CupertinoButton(
                      onPressed: () async {
                        await LaunchReview.launch(
                          writeReview: false,
                          iOSAppId: '6444567325',
                        );
                      },
                      child: const Text(btnLabel),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text(btnLabelCancel),
                    ),
                  ],
                ),
              ],
            )
          : AlertDialog(
              title: const Text(title, style: AppTypography.kH16),
              content: const Text(message, style: AppTypography.kBody14),
              actions: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () async {
                        await LaunchReview.launch(
                          writeReview: false,
                          androidAppId: 'com.qlever.fitt',
                        );
                      },
                      child: const Text(btnLabel),
                    ),
                    MaterialButton(
                      onPressed: () => context.pop(),
                      child: const Text(btnLabelCancel),
                    ),
                  ],
                ),
              ],
            );
    },
  );
}
