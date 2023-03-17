import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';

class FirebaseNotificationsPermission {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  Future<void> getFirebaseNotificationPermission() async {
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Показан попап с запросом доступа к пуш нотификациям',
    );
    await _firebaseMessaging.requestPermission();
    final settings = await _firebaseMessaging.getNotificationSettings();
    switch (settings.authorizationStatus) {
      case AuthorizationStatus.authorized:
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Подтвержден попап с запросом доступа к пуш нотификациям',
        );
        break;
      case AuthorizationStatus.denied:
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName:
              'Не подтвержден попап с запросом доступа к пуш нотификациям',
        );
        break;
      case AuthorizationStatus.notDetermined:
        break;
      case AuthorizationStatus.provisional:
        break;
    }
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}
