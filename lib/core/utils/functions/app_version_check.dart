import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:fitt/core/helpers/new_app_version_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> appVersionCheck({required BuildContext context}) async {
  // Get current installed app version
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  final currentVersion =
      double.parse(packageInfo.version.trim().replaceAll('.', ''));

  // Get latest app version from firebase remote config
  final remoteConfig = FirebaseRemoteConfig.instance;

  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: Duration.zero,
    ),
  );

  try {
    await remoteConfig.fetchAndActivate();
    remoteConfig.getString('new_app_version');

    final newAppVersion = double.parse(
      remoteConfig.getString('new_app_version').trim().replaceAll('.', ''),
    );

    if (newAppVersion > currentVersion) {
      // ignore: use_build_context_synchronously
      await newAppVersionDialog(context: context);
    }
  } on Exception catch (e) {
    print(e);
  }
}
