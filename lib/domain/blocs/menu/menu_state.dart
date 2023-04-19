part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _MenuStateInitial;
  const factory MenuState.loaded() = _MenuStateLoaded;
  const factory MenuState.error({
    required String error,
  }) = _MenuStateError;
}
