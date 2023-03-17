import 'package:fitt/core/env.dart';
import 'package:flutter/foundation.dart';

abstract class Config {
  static const bool enableLogging = kDebugMode;
  static const String baseUrl = kBaseApiUrl;
  static const String sentryDSN =
      'https://053ecdea8a0440858a5f8759f28bb6b8@sentry.support.storm.fit/4';
  static const String yandexAppMetricaApiKey =
      'ccc38321-80da-4a15-8447-8e1363dc2649';
}
