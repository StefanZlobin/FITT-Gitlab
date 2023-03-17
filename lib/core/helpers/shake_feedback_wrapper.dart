import 'package:feedback_sentry/feedback_sentry.dart';
import 'package:fitt/core/env.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shake/shake.dart';

class ShakeFeedbackWrapper extends StatelessWidget with UserMixin {
  const ShakeFeedbackWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BetterFeedback(
      key: GlobalKey(debugLabel: 'FEEDBACKBUILDER'),
      child: Builder(
        builder: (shakeContext) {
          if (!kBaseApiUrl.contains('https://api.fitandtech.app/api/')) {
            ShakeDetector.autoStart(
              minimumShakeCount: 3,
              onPhoneShake: () {
                Sentry.addBreadcrumb(
                  Breadcrumb(
                    type: 'user',
                    message: 'Отправлен отзыв',
                    category: 'ui.click',
                  ),
                );
                final feedback = BetterFeedback.of(shakeContext);
                feedback.showAndUploadToSentry(
                  name: '${userSnapshot?.firstName} ${userSnapshot?.lastName}',
                  email: '${userSnapshot?.email}',
                );
              },
            );
          }
          return child;
        },
      ),
    );
  }
}
