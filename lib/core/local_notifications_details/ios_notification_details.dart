import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const DarwinNotificationDetails iOSPlatformChannelSpecifics = DarwinNotificationDetails(
  presentAlert: true,
  presentBadge: false,
  presentSound: true,
  threadIdentifier: 'fitt_thread_identifier',
);
