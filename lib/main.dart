import 'dart:developer';

import 'package:fitt/config/config.dart';
import 'package:fitt/config/init.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  await init();
  Bloc.observer = SimpleBlocObserver();
  await SentryFlutter.init(
    (options) => {
      options.dsn = Config.sentryDSN,
      options.tracesSampleRate = 1.0,
      options.attachStacktrace = false,
    },
    appRunner: () => runApp(const MyApp()),
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
