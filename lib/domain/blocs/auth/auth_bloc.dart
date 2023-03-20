import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/use_cases/authentication/auth_use_case.dart';
import 'package:fitt/domain/use_cases/user/user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCase = AuthUseCase();
  final AuthRepository authRepository = getIt<AuthRepository>();
  final userUseCase = UserUseCase();
  late StreamSubscription<AuthenticationStatusEnum>
      _authenticationStatusSubscription;

  AuthBloc() : super(const AuthState.unknown()) {
    on<_AuthEventAuthenticationStatusChanged>(
      _onAuthEventAuthenticationStatusChanged,
    );
    on<_AuthEventAuthenticationLogoutRequested>(
      _onAuthEventAuthenticationLogoutRequested,
    );

    _authenticationStatusSubscription =
        authRepository.authenticationStatus.listen(
      (AuthenticationStatusEnum authenticationStatusEnum) =>
          add(AuthEvent.authenticationStatusChanged(
        authenticationStatusEnum: authenticationStatusEnum,
      )),
    );
  }

  Future<void> _onAuthEventAuthenticationStatusChanged(
    _AuthEventAuthenticationStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.authenticationStatusEnum) {
      case AuthenticationStatusEnum.unknown:
        return emit(const AuthState.unknown());
      case AuthenticationStatusEnum.unauthenticated:
        return emit(const AuthState.unauthenticated());
      case AuthenticationStatusEnum.authenticated:
        await userUseCase.getSignedUser();
        return emit(const AuthState.authenticated());
    }
  }

  Future<void> _onAuthEventAuthenticationLogoutRequested(
    _AuthEventAuthenticationLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await authRepository.signOut();
      await userUseCase.logoutUser();
    } on NetworkExceptions catch (e) {
      emit(_AuthStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }
}
