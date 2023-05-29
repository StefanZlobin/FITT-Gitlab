import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:fitt/config/config.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppMetricaServiceImpl implements AppMetricaService {
  @override
  Future<void> reportEventToAppMetrica({required String eventName}) async {
    if (!kReleaseMode &&
        !Config.baseUrl.contains('https://api.fitandtech.app/api/')) {
      return;
    }

    try {
      await AppMetrica.reportEvent(eventName);
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> reportEventToAppMetricaWithMap({
    required String eventName,
    required Map<String, Object>? attributes,
  }) async {
    if (!kReleaseMode &&
        !Config.baseUrl.contains('https://api.fitandtech.app/api/')) {
      return;
    }

    try {
      await AppMetrica.reportEventWithMap(eventName, attributes);
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
    }
  }
}
