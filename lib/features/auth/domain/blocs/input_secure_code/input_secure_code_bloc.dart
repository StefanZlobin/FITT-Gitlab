import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/tokens/user_device_token.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/features/auth/domain/blocs/input_phone_number/input_phone_number_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

part 'input_secure_code_bloc.freezed.dart';
part 'input_secure_code_event.dart';
part 'input_secure_code_state.dart';

class InputSecureCodeBloc
    extends Bloc<InputSecureCodeEvent, InputSecureCodeState> {
  InputSecureCodeBloc() : super(const InputSecureCodeState.initial()) {
    on<_InputSecureCodeEventRequestVerificationCode>(
      _onInputSecureCodeEventRequestVerificationCode,
    );
    on<_InputSecureCodeEventRequestCodeVerification>(
      _onInputSecureCodeEventRequestCodeVerification,
    );

    getIt<InputPhoneNumberBloc>()
        .phoneNumber
        .listen((String? phoneNumber) async {
      if (phoneNumber != null) {
        _phoneNumber = phoneNumber;

        await getIt<AppMetricaService>().reportEventToAppMetricaWithMap(
          eventName: 'Пользователь ввел номер телефона',
          attributes: {'номер телефона': _phoneNumber},
        );

        add(InputSecureCodeEvent.requestVerificationCode(
          phoneNumber: phoneNumber,
        ));

        getIt<AuthenticationRepository>().updateAuthenticationStatus(
          AuthenticationStatusEnum.loading,
        );
      }
    });
  }

  final LoginUseCase loginUseCase = LoginUseCase();
  int countSecureCodeEntryAttempts = 5;

  late String _phoneNumber;

  final secureCodeMask = '_ ' * 4;
  late MaskTextInputFormatter secureCodeFormatter = MaskTextInputFormatter(
    mask: secureCodeMask,
    filter: {'_': RegExp(r'[0-9]')},
  );

  Future<void> _onInputSecureCodeEventRequestVerificationCode(
    _InputSecureCodeEventRequestVerificationCode event,
    Emitter<InputSecureCodeState> emit,
  ) async {
    emit(const InputSecureCodeState.initial());
    countSecureCodeEntryAttempts = 5;

    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь запросил телефонный звонок',
    );

    await loginUseCase.login(phoneNumber: event.phoneNumber);
  }

  Future<void> _onInputSecureCodeEventRequestCodeVerification(
    _InputSecureCodeEventRequestCodeVerification event,
    Emitter<InputSecureCodeState> emit,
  ) async {
    if (secureCodeFormatter.isFill()) {
      countSecureCodeEntryAttempts -= 1;

      await getIt<AppMetricaService>().reportEventToAppMetrica(
        eventName:
            'Пользователь ввел код подтверждения и ждет его подверждения',
      );

      final verificationCode = event.verificationCode;
      final fcmToken = await UserDeviceToken().setupToken();
      try {
        await loginUseCase.checkSecureCode(
          phoneNumber: _phoneNumber,
          secureCode: verificationCode,
          fcmToken: fcmToken,
        );
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Код введен правильно',
        );
      } on NetworkExceptions catch (e) {
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Код введен с ошибкой',
        );
        emit(InputSecureCodeState.error(
          error: NetworkExceptions.getErrorMessage(e),
          countSecureCodeEntryAttempts: countSecureCodeEntryAttempts,
          phoneNumber: _phoneNumber,
        ));
      }
    }
  }
}
