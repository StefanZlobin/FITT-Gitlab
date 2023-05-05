import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/auth/domain/blocs/login_error_timer/login_error_timer_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<_LoginEventAuthenticationStatusChanged>(
      _onLoginEventAuthenticationStatusChanged,
    );

    getIt<AuthenticationRepository>()
        .authenticationStatus
        .listen((AuthenticationStatusEnum authenticationStatus) {
      add(LoginEvent.authenticationStatusChanged(
        authenticationStatus: authenticationStatus,
      ));
    });
  }

  final LoginUseCase loginUseCase = LoginUseCase();
  int countSecureCodeEntryAttempts = 5;

  Future<void> _onLoginEventAuthenticationStatusChanged(
    _LoginEventAuthenticationStatusChanged event,
    Emitter<LoginState> emit,
  ) async {
    switch (event.authenticationStatus) {
      case AuthenticationStatusEnum.authenticated:
        getIt<LoginErrorTimerBloc>().countTimerEnd = 0;
        return emit(const LoginState.loaded());
      case AuthenticationStatusEnum.unknown:
      case AuthenticationStatusEnum.unauthenticated:
      case AuthenticationStatusEnum.loading:
        getIt<LoginErrorTimerBloc>().countTimerEnd = 0;
        return emit(const LoginState.initial());
      case AuthenticationStatusEnum.error:
        return emit(const LoginState.error(
          error: '',
        ));
    }
  }
}
