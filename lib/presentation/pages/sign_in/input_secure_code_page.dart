import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/tokens/user_device_token.dart';
import 'package:fitt/domain/blocs/auth/auth_bloc.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputSecureCodePage extends StatelessWidget {
  const InputSecureCodePage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            getIt<AuthBloc>().attemptsEnterSecureCode = 5;
            getIt<AuthenticationErrorTimerBloc>().add(
              AuthenticationErrorTimerEvent.setTimerInitial(
                duration:
                    getIt<AuthenticationErrorTimerBloc>().attemptsEnterCode < 3
                        ? const Duration(minutes: 5)
                        : const Duration(minutes: 30),
              ),
            );
            context.pop();
          },
          icon: const Icon(AppIcons.arr_big_left),
        ),
        title: Text(L.of(context).inputSecureCode),
      ),
      body: Column(
        children: [
          const InputSecureCodeHint(),
          InputSecureCodeForm(phoneNumber: phoneNumber),
          const Expanded(child: SizedBox()),
          const RepeatCallAfter(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class RepeatCallAfter extends StatelessWidget {
  const RepeatCallAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationErrorTimerBloc,
        AuthenticationErrorTimerState>(
      bloc: getIt<AuthenticationErrorTimerBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          timerRunComplete: (attemptsEnterCode) {
            getIt<AuthenticationErrorTimerBloc>().add(
              AuthenticationErrorTimerEvent.setTimerInitial(
                duration: attemptsEnterCode < 3
                    ? const Duration(minutes: 5)
                    : const Duration(minutes: 30),
              ),
            );
          },
        );
      },
      child: BlocBuilder<AuthenticationErrorTimerBloc,
          AuthenticationErrorTimerState>(
        bloc: getIt<AuthenticationErrorTimerBloc>(),
        builder: (context, state) {
          return state.when(
            timerInitial: (duration) => _buildTextRepeatCall(duration),
            timerRunInProgress: (duration) => _buildTextRepeatCall(duration),
            timerRunPause: (_) => const SizedBox(),
            timerRunComplete: (attemptsEnterCode) {
              return TextButton(
                onPressed: () {
                  getIt<AuthBloc>().attemptsEnterSecureCode = 5;
                  getIt<AuthenticationErrorTimerBloc>().add(
                    AuthenticationErrorTimerEvent.setTimerInitial(
                      duration: attemptsEnterCode < 3
                          ? const Duration(minutes: 5)
                          : const Duration(minutes: 30),
                    ),
                  );
                  context.pop();
                },
                style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
                child: Center(
                  child: Text(
                    'Запросить звонок повторно',
                    style:
                        AppTypography.kH16.apply(color: AppColors.kPrimaryBlue),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Text _buildTextRepeatCall(Duration callAfter) {
    return Text(
      'Повторный звонок через ${callAfter.inSeconds} c',
      style: AppTypography.kH16.apply(color: AppColors.kOxford40),
    );
  }
}

class InputSecureCodeForm extends StatelessWidget {
  const InputSecureCodeForm({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    final secureCodeMask = '_ ' * 4;
    late final secureCodeFormatter = MaskTextInputFormatter(
      mask: secureCodeMask,
      filter: {'_': RegExp(r'[0-9]')},
    );

    return BlocListener<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          error: (secureCode, attemptsEnterSecureCode, error, phoneNumber) {
            getIt<AuthenticationErrorTimerBloc>()
                .add(const AuthenticationErrorTimerEvent.timerStarted(
              duration: Duration(minutes: 1),
            ));
          },
        );
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        bloc: getIt<AuthBloc>(),
        builder: (context, state) {
          return state.when(
            loading: (phoneNumber, secureCode, fcmToken) {
              return _buildSecureCodeForm(
                secureCodeFormatter,
                secureCodeMask,
                context,
                false,
                5,
              );
            },
            unknown: () => const SizedBox(),
            authenticated: () => const SizedBox(),
            unauthenticated: () => const SizedBox(),
            error: (secureCode, attemptsEnterSecureCode, error, phoneNumber) {
              return _buildSecureCodeForm(
                secureCodeFormatter,
                secureCodeMask,
                context,
                true,
                attemptsEnterSecureCode ?? 5,
              );
            },
          );
        },
      ),
    );
  }

  Column _buildSecureCodeForm(
    MaskTextInputFormatter secureCodeFormatter,
    String secureCodeMask,
    BuildContext context,
    bool isError,
    int attemptsEnterSecureCode,
  ) {
    return Column(
      children: [
        TextField(
          inputFormatters: [secureCodeFormatter],
          style: isError
              ? AppTypography.kH24.apply(color: AppColors.kPrimaryBlue)
              : AppTypography.kH24.apply(color: AppColors.kOxford),
          autofocus: true,
          textAlign: TextAlign.center,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: secureCodeMask,
            hintStyle: AppTypography.kH24.apply(color: AppColors.kOxford),
            alignLabelWithHint: true,
            disabledBorder: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          onChanged: (_) async {
            if (secureCodeFormatter.isFill()) {
              await _callback(context, secureCodeFormatter, phoneNumber);
            }
          },
        ),
        if (isError)
          Text(
            'Номер введен неверно. Осталось $attemptsEnterSecureCode попытки',
            style: AppTypography.kBody14.apply(color: AppColors.kPrimaryBlue),
          ),
      ],
    );
  }

  Future<void> _callback(
    BuildContext context,
    MaskTextInputFormatter secureCodeFormatter,
    String phoneNumber,
  ) async {
    final deviceToken = await UserDeviceToken().setupToken();
    final unmaskedSecureCode = secureCodeFormatter.getUnmaskedText();
    getIt<AuthBloc>().add(AuthEvent.authenticationCodeVerificationRequested(
      phoneNumber: phoneNumber,
      secureCode: unmaskedSecureCode,
      fcmToken: deviceToken,
    ));
  }
}

class InputSecureCodeHint extends StatelessWidget {
  const InputSecureCodeHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16, left: 16, right: 16),
      child: Text(
        getIt<AuthenticationBloc>().circularAttempt > 0
            ? 'Попробуем еще раз.\nВведите последние четыре цифры номера, который вам звонил'
            : 'Введите последние четыре цифры номера, который вам звонил',
        style: AppTypography.kH14.apply(color: AppColors.kOxford),
        textAlign: TextAlign.center,
      ),
    );
  }
}
