import 'package:collection/collection.dart';
import 'package:fitt/core/local_notifications_details/android_notification_details.dart';
import 'package:fitt/core/local_notifications_details/ios_notification_details.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart';

class LocalNotificationsServiceImpl implements LocalNotificationsService {
  static final localNotification = FlutterLocalNotificationsPlugin();
  NotificationDetails platformChannelSpecifics = const NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );

  @override
  Future<void> init() async {
    final localNotification = FlutterLocalNotificationsPlugin();

    tz.initializeTimeZones();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_stat_name');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      defaultPresentBadge: false,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await localNotification.initialize(initializationSettings);
  }

  @override
  Future<void> deleteLocalNotification({required int id}) async {
    final canDelete = await checkNotificationExist(id: id);
    if (canDelete) await localNotification.cancel(id);
  }

  @override
  Future<bool> checkNotificationExist({required int id}) async {
    final notifications = await localNotification.pendingNotificationRequests();
    final foundNotification = notifications.firstWhereOrNull((n) => n.id == id);
    return foundNotification != null;
  }

  @override
  Future<void> scheduleLocalNotification({
    required int id,
    required String title,
    required String body,
    required Duration scheduleDuration,
  }) async {
    final isExist = await checkNotificationExist(id: id);
    if (isExist && title.isEmpty && body.isEmpty) return;
    await localNotification.zonedSchedule(
      id,
      title,
      body,
      TZDateTime.now(local).add(scheduleDuration),
      platformChannelSpecifics,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  @override
  Future<void> showLocalNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    if (title.isNotEmpty || body.isNotEmpty) {
      await localNotification.show(
        id,
        title,
        body,
        platformChannelSpecifics,
      );
    }
  }
}
