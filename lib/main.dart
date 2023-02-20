import 'dart:developer';

import 'package:feedback_sentry/feedback_sentry.dart';
import 'package:fitt/config/init.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shake/shake.dart';

Future<void> main() async {
  await init();
  Bloc.observer = SimpleBlocObserver();
  await SentryFlutter.init(
    (options) => {
      options.dsn =
          'http://053ecdea8a0440858a5f8759f28bb6b8@sentry.support.storm.fit:9000/4',
      options.tracesSampleRate = 1.0,
      options.attachStacktrace = false,
    },
    appRunner: () => runApp(
      BetterFeedback(
        key: GlobalKey(debugLabel: 'FEEDBACKBUILDER'),
        child: Builder(
          builder: (context) {
            ShakeDetector.autoStart(
              onPhoneShake: () {
                Sentry.addBreadcrumb(Breadcrumb(
                  type: 'user',
                  message: 'Отправлен отзыв',
                  category: 'ui.click',
                ));
                final feedback = BetterFeedback.of(context);
                feedback.showAndUploadToSentry(
                  name: 'qwe',
                  email: 'qweqweq',
                );
              },
            );
            return const MyApp();
          },
        ),
      ),
    ),
  );
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    //log('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('${bloc.runtimeType} $error $stackTrace');
  }
}
