import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
  'fitt_channel_id',
  'fitt_channel_name',
  channelDescription: 'fitt_channel_description',
  importance: Importance.high,
  priority: Priority.max,
  visibility: NotificationVisibility.public,
  icon: 'ic_stat_name',
);
