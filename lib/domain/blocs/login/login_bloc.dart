import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/use_cases/authentication/auth_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<_LoginEventPhoneNumberChanged>(
      _onLoginEventPhoneNumberChanged,
    );
    on<_LoginEventRequestVerificationCode>(
      _onLoginEventRequestVerificationCode,
    );
    on<_LoginEventRequestCodeVerification>(
      _onLoginEventRequestCodeVerification,
    );
  }

  final AuthUseCase authUseCase = AuthUseCase();
  final AuthRepository authRepository = getIt<AuthRepository>();
  int countSecureCodeEntryAttempts = 5;

  void _onLoginEventPhoneNumberChanged(
    _LoginEventPhoneNumberChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(LoginState.loaded(phoneNumber: event.phoneNumber));
  }

  Future<void> _onLoginEventRequestVerificationCode(
    _LoginEventRequestVerificationCode event,
    Emitter<LoginState> emit,
  ) async {
    try {
      await authUseCase.signIn(phoneNumber: event.phoneNumber);
    } on NetworkExceptions catch (e) {
      emit(LoginState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }

  Future<void> _onLoginEventRequestCodeVerification(
    _LoginEventRequestCodeVerification event,
    Emitter<LoginState> emit,
  ) async {
    countSecureCodeEntryAttempts -= 1;
    try {
      await authUseCase.checkSecureCode(
        phoneNumber: event.phoneNumber,
        secureCode: event.verificationCode,
        fcmToken: event.fcmToken,
      );
    } on NetworkExceptions catch (e) {
      emit(LoginState.error(
        error: NetworkExceptions.getErrorMessage(e),
        countSecureCodeEntryAttempts: countSecureCodeEntryAttempts,
        phoneNumber: event.phoneNumber,
      ));
    }
  }
}
