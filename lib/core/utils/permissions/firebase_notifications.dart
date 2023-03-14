import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationsPermission {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> getFirebaseNotificationPermission() async {
    await _firebaseMessaging.requestPermission();
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}
