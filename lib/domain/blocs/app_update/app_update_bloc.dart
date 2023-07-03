import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/services/remote_config/remote_config_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_update_bloc.freezed.dart';
part 'app_update_event.dart';
part 'app_update_state.dart';

class AppUpdateBloc extends Bloc<AppUpdateEvent, AppUpdateState> {
  AppUpdateBloc() : super(const AppUpdateState.initial()) {
    on<_AppUpdateEventCheckUpdate>(_onAppUpdateEventCheckUpdate);
    on<_AppUpdateEventUpdateApp>(_onAppUpdateEventUpdateApp);
  }

  Future<void> _onAppUpdateEventCheckUpdate(
    _AppUpdateEventCheckUpdate event,
    Emitter<AppUpdateState> emit,
  ) async {
    emit(const AppUpdateState.loading());

    final res = await getIt<RemoteConfigService>().getAppVersion();

    if (res.isEmpty) return;

    // Get current installed app version
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final currentVersion =
        double.parse(packageInfo.version.trim().replaceAll('.', ''));

    final newAppVersion = double.parse(
      res.trim().replaceAll('.', ''),
    );

    final needUpdate = newAppVersion > currentVersion;

    add(_AppUpdateEventUpdateApp(needUpdate: needUpdate));
  }

  Future<void> _onAppUpdateEventUpdateApp(
    _AppUpdateEventUpdateApp event,
    Emitter<AppUpdateState> emit,
  ) async {
    await Future<void>.delayed(const Duration(seconds: 5));
    emit(AppUpdateState.loaded(needUpdate: event.needUpdate));
  }
}
