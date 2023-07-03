part of 'app_update_bloc.dart';

@freezed
class AppUpdateEvent with _$AppUpdateEvent {
  const factory AppUpdateEvent.checkUpdate() = _AppUpdateEventCheckUpdate;
  const factory AppUpdateEvent.updateApp({
    required bool needUpdate,
  }) = _AppUpdateEventUpdateApp;
}
