import 'package:appmetrica_plugin/appmetrica_plugin.dart';

abstract class AppMetricaService {
  /// Sends an event message with a short name or description of the event [eventName].
  Future<void> reportEventToAppMetrica({required String eventName});

  /// Sends an event message with a short name or description of the event [eventName] and Map[attributes].
  Future<void> reportEventToAppMetricaWithMap({
    required String eventName,
    required Map<String, Object>? attributes,
  });
  Future<void> reportUserProfile({required UserProfile userProfile});
  Future<void> setUserProfileID({required String? profileId});
}
