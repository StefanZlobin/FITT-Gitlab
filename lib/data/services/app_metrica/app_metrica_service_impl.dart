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

  @override
  Future<void> reportUserProfile({required UserProfile userProfile}) async {
    try {
      await AppMetrica.reportUserProfile(userProfile);
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> setUserProfileID({required String? profileId}) async {
    try {
      await AppMetrica.setUserProfileID(profileId);
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(e, stackTrace: stackTrace);
    }
  }

  @override
  Future<void> reportEventToAppMetricaWithMap({
    required String eventName,
    required Map<String, Object>? attributes,
  }) async {
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
