import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> with UserMixin {
  MenuBloc() : super(const MenuState.initial()) {
    on<_MenuEventDefinitionMenu>(_onMenuEventDefinitionMenu);

    getIt<AuthenticationRepository>()
        .authenticationStatus
        .listen((AuthenticationStatusEnum authenticationStatus) {
      switch (authenticationStatus) {
        case AuthenticationStatusEnum.authenticated:
          return add(const MenuEvent.definitionMenu(isUserEmpty: false));
        case AuthenticationStatusEnum.unknown:
        case AuthenticationStatusEnum.unauthenticated:
        case AuthenticationStatusEnum.loading:
        case AuthenticationStatusEnum.error:
          return add(const MenuEvent.definitionMenu(isUserEmpty: true));
      }
    });
  }

  void _onMenuEventDefinitionMenu(
    _MenuEventDefinitionMenu event,
    Emitter<MenuState> emit,
  ) {
    if (event.isUserEmpty) {
      emit(const MenuState.initial());
    } else {
      emit(const MenuState.loaded());
    }
  }
}
