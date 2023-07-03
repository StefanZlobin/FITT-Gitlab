part of 'app_update_bloc.dart';

@freezed
class AppUpdateState with _$AppUpdateState {
  const factory AppUpdateState.initial() = _AppUpdateStateInitial;
  const factory AppUpdateState.loading() = _AppUpdateStateLoading;
  const factory AppUpdateState.loaded({
    required bool needUpdate,
  }) = _AppUpdateStateLoaded;
  const factory AppUpdateState.error({
    required String error,
  }) = _AppUpdateStateError;
}
