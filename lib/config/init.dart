import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitt/config/config.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/permissions/firebase_notifications.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Method that initializes all services and needed things before app started
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  await Hive.initFlutter();

  // Firebase
  await Firebase.initializeApp();
  await FirebaseNotificationsPermission().getFirebaseNotificationPermission();

  // Yandex appmetrica
  await AppMetrica.activate(
    const AppMetricaConfig(Config.yandexAppMetricaApiKey),
  );
  await getIt<AppMetricaService>()
      .reportEventToAppMetrica(eventName: 'Session start');

  await getIt<LocalNotificationsService>().init();
  await getIt<GeolocationService>().requestPermission();

  getIt<UserBloc>().add(const UserEvent.checkUser());
}
