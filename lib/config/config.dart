import 'package:fitt/core/env.dart';
import 'package:flutter/foundation.dart';

abstract class Config {
  static const bool enableLogging = kDebugMode;
  static const String baseUrl = kBaseApiUrl;
  static const String sentryDSN =
      'http://053ecdea8a0440858a5f8759f28bb6b8@sentry.support.storm.fit:9000/4';
}
