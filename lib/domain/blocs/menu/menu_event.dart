part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.definitionMenu({
    required bool isUserEmpty,
  }) = _MenuEventDefinitionMenu;
}
