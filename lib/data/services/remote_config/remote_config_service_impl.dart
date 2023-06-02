import 'dart:developer';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fitt/domain/services/remote_config/remote_config_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class RemoteConfigServiceImpl implements RemoteConfigService {
  late final FirebaseRemoteConfig firebaseRemoteConfig;

  @override
  Future<void> init() async {
    try {
      firebaseRemoteConfig = FirebaseRemoteConfig.instance;
      await firebaseRemoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1),
      ));

      await firebaseRemoteConfig.fetchAndActivate();
    } on Exception catch (e, stackTrace) {
      log(
        'Unable to initialize Firebase Remote Config',
        error: e,
        stackTrace: stackTrace,
      );

      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw Exception(e);
    }
  }

  @override
  Future<String> getAppVersion() async {
    try {
      // ignore: prefer_single_quotes
      return firebaseRemoteConfig.getString("new_app_version");
    } on Exception catch (e, stackTrace) {
      log(
        'Can not get string value from Firebase Remote Config',
        error: e,
        stackTrace: stackTrace,
      );

      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw Exception(e);
    }
  }
}
