import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationsPermission {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> getFirebaseNotificationPermission() async {
    await _firebaseMessaging.requestPermission();
  }
}
