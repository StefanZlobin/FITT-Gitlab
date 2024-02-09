import 'package:fitt/core/env.dart';
import 'package:flutter/foundation.dart';

abstract class Config {
  static const bool enableLogging = kDebugMode;
  static const String baseUrl = kBaseApiUrl;
}
