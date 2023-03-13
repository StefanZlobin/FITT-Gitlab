import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/domain/blocs/login/login_bloc.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/auth_user_disclaimer.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputPhoneNumberPage extends StatelessWidget {
  const InputPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageTitle(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: const Icon(AppIcons.arr_big_left, color: AppColors.kBaseBlack),
        ),
        title: Text(L.of(context).inputPhoneNumber),
      ),
      body: Column(
        children: const [
          InputPhoneNumberHint(),
          InputPhoneNumberForm(),
          Expanded(child: SizedBox()),
          AuthUserDisclaimer(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          ),
          CompleteButton(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class CompleteButton extends StatelessWidget {
  const CompleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      width: MediaQuery.of(context).size.width,
      height: 56,
      child: BlocBuilder<LoginBloc, LoginState>(
        bloc: getIt<LoginBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => _buildButton(null, context),
            loading: () => const SizedBox(),
            loaded: (phoneNumber, _) => _buildButton(phoneNumber, context),
            error: (error, _, phoneNumber) =>
                _buildButton(phoneNumber, context, isError: true),
          );
        },
      ),
    );
  }

  Widget _buildButton(
    String? phoneNumber,
    BuildContext context, {
    bool isError = false,
  }) {
    final phone = phoneNumber ?? '';
    return BlocBuilder<AuthenticationErrorTimerBloc,
        AuthenticationErrorTimerState>(
      bloc: getIt<AuthenticationErrorTimerBloc>(instanceName: 'inputPhonePage'),
      builder: (context, state) {
        return state.when(
          timerInitial: (duration) {
            return AppElevatedButton(
              textButton: const Text('Продолжить'),
              isDisable: isError || phone.isEmpty,
              marginButton: const EdgeInsets.all(0),
              onPressed: () {
                getIt<LoginBloc>().add(
                  LoginEvent.requestVerificationCode(
                    phoneNumber: phone,
                  ),
                );
                context.pushNamed(
                  AppRoute.inputSecureCode.routeToPath,
                  extra: phoneNumber,
                );
              },
            );
          },
          timerRunInProgress: (duration) {
            return AppElevatedButton(
              textButton: Text(
                'Повторный звонок через ${duration.inSeconds} c',
                style: AppTypography.kH16.apply(color: AppColors.kBaseWhite),
              ),
              isDisable: isError || phone.isEmpty,
              marginButton: const EdgeInsets.all(0),
              onPressed: () {
                getIt<LoginBloc>().add(
                  LoginEvent.requestVerificationCode(
                    phoneNumber: phone,
                  ),
                );
                context.pushNamed(
                  AppRoute.inputSecureCode.routeToPath,
                  extra: phoneNumber,
                );
              },
            );
          },
          timerRunComplete: (countTimerEnd) {
            getIt<LoginBloc>().add(
              LoginEvent.phoneNumberChanged(phoneNumber: phone),
            );
            return AppElevatedButton(
              textButton: const Text('Продолжить'),
              isDisable: isError || phone.isEmpty,
              marginButton: const EdgeInsets.all(0),
              onPressed: () {
                getIt<LoginBloc>().countSecureCodeEntryAttempts = 5;
                late final Duration duration;
                if (countTimerEnd > 2) {
                  duration = const Duration(minutes: 30);
                } else if (countTimerEnd >= 1) {
                  duration = const Duration(minutes: 5);
                }
                getIt<AuthenticationErrorTimerBloc>()
                    .add(AuthenticationErrorTimerEvent.setTimerInitial(
                  duration: duration,
                ));

                getIt<LoginBloc>().add(
                  LoginEvent.requestVerificationCode(
                    phoneNumber: phone,
                  ),
                );
                context.pushNamed(
                  AppRoute.inputSecureCode.routeToPath,
                  extra: phoneNumber,
                );
              },
            );
          },
        );
      },
    );
  }
}

class InputPhoneNumberHint extends StatelessWidget {
  const InputPhoneNumberHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16),
      child: Text(
        //'Пожалуйста, проверьте номер телефона и состояние мобильной сети'
        'Введите ваш номер телефона',
        style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
      ),
    );
  }
}

class InputPhoneNumberForm extends StatelessWidget {
  const InputPhoneNumberForm({super.key});

  @override
  Widget build(BuildContext context) {
    const phoneNumberMask = '___) ___ - __ - __ ';
    const placeholder = '_ _ _) _ _ _ - _ _ - _ _ ';
    late final phoneNumberFormatter = MaskTextInputFormatter(
      mask: phoneNumberMask,
      filter: {'_': RegExp(r'[0-9]')},
    );

    return Center(
      child: SizedBox(
        width: 260,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '+7 (',
              style: AppTypography.kH24.apply(color: AppColors.kBaseBlack),
            ),
            Expanded(
              child: TextField(
                inputFormatters: [phoneNumberFormatter],
                style: AppTypography.kH24.apply(color: AppColors.kBaseBlack),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: placeholder,
                    hintStyle:
                        AppTypography.kH24.apply(color: AppColors.kBaseBlack)),
                keyboardType: TextInputType.phone,
                onChanged: (_) {
                  if (phoneNumberFormatter.isFill()) {
                    getIt<LoginBloc>().add(
                      LoginEvent.phoneNumberChanged(
                        phoneNumber:
                            '+7${phoneNumberFormatter.getUnmaskedText()}',
                      ),
                    );
                  } else {
                    getIt<LoginBloc>().add(
                      const LoginEvent.phoneNumberChanged(phoneNumber: ''),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
