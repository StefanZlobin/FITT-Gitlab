import 'package:firebase_messaging/firebase_messaging.dart';

class UserDeviceToken {
  Future<String> setupToken() async {
    // Get the token each time the application loads
    final String? token = await FirebaseMessaging.instance.getToken();
    final fcmToken = token;
    if (fcmToken == null) throw Exception();

    return fcmToken;
  }
}
