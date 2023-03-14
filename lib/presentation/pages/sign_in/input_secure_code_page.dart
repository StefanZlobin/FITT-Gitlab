// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/tokens/user_device_token.dart';
import 'package:fitt/domain/blocs/auth/auth_bloc.dart';
import 'package:fitt/domain/blocs/login/login_bloc.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/pages/sign_in/widget/repeat_call_after.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputSecureCodePage extends StatelessWidget with UserMixin {
  const InputSecureCodePage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          authenticated: () {
            if (userSnapshot == null) {
              context.pushNamed(
                AppRoute.personalData.routeToPath,
                extra: true,
              );
            }
            if (userSnapshot!.hasFullData) {
              context.pop();
              context.pop();
            } else {
              context.pushNamed(
                AppRoute.personalData.routeToPath,
                extra: true,
              );
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(),
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
      ),
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

    return BlocBuilder<LoginBloc, LoginState>(
      bloc: getIt<LoginBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => _buildSecureCodeForm(
            context,
            secureCodeMask,
            secureCodeFormatter,
            null,
          ),
          loading: () => _buildSecureCodeForm(
            context,
            secureCodeMask,
            secureCodeFormatter,
            null,
          ),
          loaded: (phoneNumber, verifiationCode) {
            return _buildSecureCodeForm(
              context,
              secureCodeMask,
              secureCodeFormatter,
              null,
            );
          },
          error: (error, countSecureCodeEntryAttempts, _) {
            return _buildSecureCodeForm(
              context,
              secureCodeMask,
              secureCodeFormatter,
              countSecureCodeEntryAttempts,
            );
          },
        );
      },
    );
  }

  Column _buildSecureCodeForm(
    BuildContext context,
    String secureCodeMask,
    MaskTextInputFormatter secureCodeFormatter,
    int? countSecureCodeEntryAttempts,
  ) {
    final isError = countSecureCodeEntryAttempts != null && countSecureCodeEntryAttempts < 5;
    return Column(
      children: [
        TextField(
          enabled: countSecureCodeEntryAttempts != 0,
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
            'Номер введен неверно. Осталось $countSecureCodeEntryAttempts попытки',
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
    final unmaskedSecureCode = secureCodeFormatter.getUnmaskedText();
    final deviceToken = await UserDeviceToken().setupToken();
    getIt<LoginBloc>().add(
      LoginEvent.requestCodeVerification(
        verificationCode: unmaskedSecureCode,
        phoneNumber: phoneNumber,
        fcmToken: deviceToken,
      ),
    );
  }
}

class InputSecureCodeHint extends StatelessWidget {
  const InputSecureCodeHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16, left: 16, right: 16),
      child: Text(
        //'Попробуем еще раз.\nВведите последние четыре цифры номера, который вам звонил'
        'Введите последние четыре цифры номера, который вам звонил',
        style: AppTypography.kH14.apply(color: AppColors.kOxford),
        textAlign: TextAlign.center,
      ),
    );
  }
}
