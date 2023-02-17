import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';
import 'package:fitt/domain/use_cases/authentication/auth_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  late final AuthUseCase authUseCase;

  AuthenticationBloc() : super(const _AuthenticationStateLoading()) {
    _init();
  }

  void _init() {
    authUseCase = AuthUseCase();

    on<_AuthenticationEventSignIn>((event, emit) async {
      try {
        await authUseCase.signIn(phoneNumber: event.phoneNumber);
        emit(_AuthenticationStateLoaded(phoneNumber: event.phoneNumber));
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });

    on<_AuthenticationEventCheckSecureCode>((event, emit) async {
      try {
        await authUseCase.checkSecureCode(
            phoneNumber: event.phoneNumber,
            secureCode: event.secureCode,
            fcmToken: event.fcmToken);
        emit(const _AuthenticationStateLoaded());
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });

    on<_AuthenticationEventSignOut>((event, emit) async {
      try {
        await authUseCase.signOut();
        emit(const _AuthenticationStateLoaded());
        getIt<UserBloc>().add(const UserEvent.checkUser());
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });

    on<_AuthenticationEventGetToken>((event, emit) async {
      try {
        await authUseCase.getToken();
        emit(const _AuthenticationStateLoaded());
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });

    on<_AuthenticationEventSaveToken>((event, emit) async {
      try {
        await authUseCase.saveToken(token: event.token);
        emit(const _AuthenticationStateLoaded());
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });

    on<_AuthenticationEventRefreshToken>((event, emit) async {
      try {
        await authUseCase.refreshToken();
        emit(const _AuthenticationStateLoaded());
      } on Exception catch (e) {
        emit(_AuthenticationStateError(error: e.toString()));
      }
    });
  }
}
