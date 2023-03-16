import 'package:bloc/bloc.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
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

  Future<void> _onLoginEventPhoneNumberChanged(
    _LoginEventPhoneNumberChanged event,
    Emitter<LoginState> emit,
  ) async {
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь ввел номер телефона',
    );
    emit(LoginState.loaded(phoneNumber: event.phoneNumber));
  }

  Future<void> _onLoginEventRequestVerificationCode(
    _LoginEventRequestVerificationCode event,
    Emitter<LoginState> emit,
  ) async {
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь запросил телефонный звонок',
    );
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
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь ввел код подтверждения и ждет его подверждения',
    );
    try {
      await authUseCase.checkSecureCode(
        phoneNumber: event.phoneNumber,
        secureCode: event.verificationCode,
        fcmToken: event.fcmToken,
      );
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Код введен правильно',
      );
    } on NetworkExceptions catch (e) {
      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName: 'Код введен с ошибкой',
      );
      emit(LoginState.error(
        error: NetworkExceptions.getErrorMessage(e),
        countSecureCodeEntryAttempts: countSecureCodeEntryAttempts,
        phoneNumber: event.phoneNumber,
      ));
    }
  }
}
