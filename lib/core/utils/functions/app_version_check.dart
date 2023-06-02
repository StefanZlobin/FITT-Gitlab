//import 'package:firebase_remote_config/firebase_remote_config.dart';
//import 'package:package_info_plus/package_info_plus.dart';

//Future<bool> appVersionCheck() async {
//  // Get current installed app version
//  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
//  final currentVersion =
//      double.parse(packageInfo.version.trim().replaceAll('.', ''));

//  // Get latest app version from firebase remote config
//  final remoteConfig = FirebaseRemoteConfig.instance;

//  await remoteConfig.setConfigSettings(
//    RemoteConfigSettings(
//      fetchTimeout: const Duration(milliseconds: 5),
//      minimumFetchInterval: const Duration(seconds: 5),
//    ),
//  );

//  try {
//    await remoteConfig.fetchAndActivate();
//    final res = remoteConfig.getString('new_app_version');

//    final newAppVersion = double.parse(
//      res.trim().replaceAll('.', ''),
//    );

//    return newAppVersion > currentVersion;
//  } on Exception catch (e) {
//    print(e);
//    return false;
//  }
//}
