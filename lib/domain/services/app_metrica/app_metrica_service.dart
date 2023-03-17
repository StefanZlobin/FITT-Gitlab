abstract class AppMetricaService {
  /// Sends an event message with a short name or description of the event [eventName].
  Future<void> reportEventToAppMetrica({required String eventName});
}
