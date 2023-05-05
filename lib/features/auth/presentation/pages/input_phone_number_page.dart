// ignore_for_file: avoid_returning_null_for_void

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/features/auth/domain/blocs/input_phone_number/input_phone_number_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/login_error_timer/login_error_timer_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/auth_user_disclaimer.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
      child: BlocBuilder<InputPhoneNumberBloc, InputPhoneNumberState>(
        bloc: getIt<InputPhoneNumberBloc>(),
        builder: (context, state) {
          return state.when(
            initial: () => _buildButton(null, context),
            loaded: (phoneNumber) => _buildButton(phoneNumber, context),
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
    return BlocBuilder<LoginErrorTimerBloc, LoginErrorTimerState>(
      bloc: getIt<LoginErrorTimerBloc>(),
      builder: (context, state) {
        return state.when(
          timerInitial: (duration) {
            return AppElevatedButton(
              textButton: const Text('Продолжить'),
              isDisable: isError || phone.isEmpty,
              marginButton: const EdgeInsets.all(0),
              onPressed: () {
                getIt<InputPhoneNumberBloc>().add(
                  InputPhoneNumberEvent.phoneNumberChanged(
                    phoneNumber: phone,
                  ),
                );

                context.pushNamed(
                  AppRoute.inputSecureCode.routeToPath,
                  extra: phoneNumber,
                );

                getIt<AuthenticationRepository>().updateAuthenticationStatus(
                  AuthenticationStatusEnum.loading,
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
              isDisable: true,
              marginButton: const EdgeInsets.all(0),
              onPressed: () => null,
            );
          },
          timerRunComplete: (countTimerEnd, duration) {
            return AppElevatedButton(
              textButton: const Text('Продолжить'),
              isDisable: isError || phone.isEmpty,
              marginButton: const EdgeInsets.all(0),
              onPressed: () {
                getIt<LoginErrorTimerBloc>()
                    .add(LoginErrorTimerEvent.setTimerInitial(
                  duration: duration,
                ));

                context.pushNamed(
                  AppRoute.inputSecureCode.routeToPath,
                  extra: phoneNumber,
                );

                getIt<AuthenticationRepository>().updateAuthenticationStatus(
                  AuthenticationStatusEnum.loading,
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
                inputFormatters: [
                  getIt<InputPhoneNumberBloc>().phoneNumberFormatter,
                ],
                style: AppTypography.kH24.apply(color: AppColors.kBaseBlack),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: getIt<InputPhoneNumberBloc>().placeholder,
                  hintStyle: AppTypography.kH24.apply(
                    color: AppColors.kBaseBlack,
                  ),
                ),
                keyboardType: TextInputType.phone,
                onChanged: (_) {
                  getIt<InputPhoneNumberBloc>().add(
                    InputPhoneNumberEvent.phoneNumberChanged(
                      phoneNumber:
                          '+7${getIt<InputPhoneNumberBloc>().phoneNumberFormatter.getUnmaskedText()}',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
