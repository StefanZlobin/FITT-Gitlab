import 'package:firebase_core/firebase_core.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/permissions/firebase_notifications.dart';
import 'package:fitt/domain/cubits/partner_clubs/partner_clubs_cubit.dart';
import 'package:fitt/domain/services/geolocation/geolocation_service.dart';
import 'package:fitt/domain/services/local_notifications/local_notifications_service.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Method that initializes all services and needed things before app started
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  await Hive.initFlutter();
  await Firebase.initializeApp();
  await FirebaseNotificationsPermission().getFirebaseNotificationPermission();

  await getIt<LocalNotificationsService>().init();
  await getIt<GeolocationService>().requestPermission();
  await getIt<PartnerClubsCubit>().getPartnerClubs();
}
