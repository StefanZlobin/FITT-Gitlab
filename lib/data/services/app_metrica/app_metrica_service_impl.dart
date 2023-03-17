import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class AppMetricaServiceImpl implements AppMetricaService {
  @override
  Future<void> reportEventToAppMetrica({required String eventName}) async {
    try {
      await AppMetrica.reportEvent(eventName);
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
    }
  }
}
