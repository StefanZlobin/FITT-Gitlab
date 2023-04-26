import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitt/config/config.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/permissions/firebase_notifications.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/auth/domain/repositories/authorization/authorization_repository.dart';
import 'package:fitt/features/auth/domain/repositories/identification/identification_repository.dart';
import 'package:fitt/features/auth/domain/repositories/token/token_repository.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Method that initializes all services and needed things before app started
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  await Hive.initFlutter();

  // Yandex appmetrica
  await AppMetrica.activate(
    const AppMetricaConfig(Config.yandexAppMetricaApiKey),
  );
  await getIt<AppMetricaService>()
      .reportEventToAppMetrica(eventName: 'Session start');

  // Firebase
  await Firebase.initializeApp();
  await FirebaseNotificationsPermission().getFirebaseNotificationPermission();

  await getIt<LocalNotificationsService>().init();
  await getIt<GeolocationService>().requestPermission();

  await getIt<TokenRepository>().getToken();
  await getIt<IdentificationRepository>().checkUserInCache();
  getIt<AuthenticationRepository>();
  getIt<AuthorizationRepository>();
  getIt<UserRepository>();
}
