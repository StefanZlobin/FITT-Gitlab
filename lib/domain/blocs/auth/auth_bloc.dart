import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/use_cases/authentication/auth_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCase = AuthUseCase();
  final AuthRepository authRepository = getIt<AuthRepository>();
  late StreamSubscription<AuthenticationStatusEnum>
      _authenticationStatusSubscription;
  int attemptsEnterSecureCode = 5;

  AuthBloc() : super(const AuthState.unknown()) {
    on<_AuthEventAuthenticationStatusChanged>(
        _onAuthEventAuthenticationStatusChanged);
    on<_AuthEventAuthenticationLoginRequested>(
        _onAuthEventAuthenticationLoginRequested);
    on<_AuthEventAuthenticationCodeVerificationRequested>(
        _onAuthEventAuthenticationCodeVerificationRequested);
    on<_AuthEventAuthenticationLogoutRequested>(
        _onAuthEventAuthenticationLogoutRequested);
    on<_AuthEventPhoneNumberEntered>(_onAuthEventPhoneNumberEntered);

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
        return emit(const AuthState.authenticated());
    }
  }

  Future<void> _onAuthEventAuthenticationLogoutRequested(
    _AuthEventAuthenticationLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await authUseCase.signOut();
    } on NetworkExceptions catch (e) {
      emit(_AuthStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthEventAuthenticationLoginRequested(
    _AuthEventAuthenticationLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await authUseCase.signIn(phoneNumber: event.phoneNumber);
    } on NetworkExceptions catch (e) {
      emit(_AuthStateError(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> _onAuthEventAuthenticationCodeVerificationRequested(
    _AuthEventAuthenticationCodeVerificationRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await authUseCase.checkSecureCode(
        phoneNumber: event.phoneNumber,
        secureCode: event.secureCode,
        fcmToken: event.fcmToken,
      );
    } on NetworkExceptions catch (e) {
      attemptsEnterSecureCode -= 1;
      emit(_AuthStateError(
        secureCode: event.secureCode,
        attemptsEnterSecureCode: attemptsEnterSecureCode,
        error: NetworkExceptions.getErrorMessage(e),
        phoneNumber: event.phoneNumber,
      ));
    }
  }

  void _onAuthEventPhoneNumberEntered(
    _AuthEventPhoneNumberEntered event,
    Emitter<AuthState> emit,
  ) {
    emit(AuthState.loading(phoneNumber: event.phoneNumber));
  }
}
