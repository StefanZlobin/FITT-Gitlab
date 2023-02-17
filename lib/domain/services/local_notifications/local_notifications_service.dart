abstract class LocalNotificationsService {
  /// Initialize local notification service
  Future<void> init();

  /// Schedule local notification
  Future<void> scheduleLocalNotification({
    required int id,
    required String title,
    required String body,
    required Duration scheduleDuration,
  });

  /// Show immediately local notification
  Future<void> showLocalNotification({
    required int id,
    required String title,
    required String body,
  });

  /// Delete local notification
  Future<void> deleteLocalNotification({required int id});
}
