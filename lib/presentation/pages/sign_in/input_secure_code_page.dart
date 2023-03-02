import 'dart:async';

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/core/utils/tokens/user_device_token.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputSecureCodePage extends StatefulWidget {
  const InputSecureCodePage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  State<InputSecureCodePage> createState() => _InputSecureCodePageState();
}

class _InputSecureCodePageState extends State<InputSecureCodePage>
    with UserMixin {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  bool _inited = false;

  final secureCodeMask = '_ ' * 4;
  late final secureCodeFormatter = MaskTextInputFormatter(
    mask: secureCodeMask,
    filter: {'_': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    if (!_inited) {
      _inited = true;
      _focusNode.requestFocus();
      Timer(const Duration(milliseconds: 200), () {
        _controller.selection = TextSelection.fromPosition(
          const TextPosition(
            offset: 0,
            affinity: TextAffinity.upstream,
          ),
        );
      });
    }

    return BlocListener<AuthenticationBloc, AuthenticationState>(
      bloc: getIt<AuthenticationBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          success: () {
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
          loaded: (attemptsEnterSecureCode, circularAttempt) {
            if (attemptsEnterSecureCode == 4 && circularAttempt == 0) {
              getIt<AuthenticationErrorTimerBloc>().add(
                const AuthenticationErrorTimerEvent.timerStarted(
                    duration: Duration(seconds: 60)),
              );
            } else if (attemptsEnterSecureCode == 4 && circularAttempt != 0) {
              getIt<AuthenticationErrorTimerBloc>().add(
                const AuthenticationErrorTimerEvent.timerStarted(
                    duration: Duration(seconds: 300)),
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
            BlocBuilder<AuthenticationBloc, AuthenticationState>(
              bloc: getIt<AuthenticationBloc>(),
              builder: (context, state) {
                return state.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (attemptsEnterSecureCode, circularAttempt) => Column(
                    children: [
                      _buildTextHintWidget(context),
                      _buildInputSecureCodeWidget(
                        context,
                        secureCodeFormatter,
                        secureCodeMask,
                        attemptsEnterSecureCode,
                        circularAttempt,
                      ),
                    ],
                  ),
                  success: () => const SizedBox(),
                  error: (error) => Column(
                    children: [
                      _buildTextHintWidget(context),
                      _buildInputSecureCodeWidget(
                        context,
                        secureCodeFormatter,
                        secureCodeMask,
                        0,
                        0,
                      ),
                    ],
                  ),
                );
              },
            ),
            const Expanded(child: SizedBox()),
            BlocBuilder<AuthenticationErrorTimerBloc,
                AuthenticationErrorTimerState>(
              bloc: getIt<AuthenticationErrorTimerBloc>(),
              builder: (context, state) {
                return state.when(
                  timerInitial: (duration) => Text(
                    'Повторный звонок через ${duration.inSeconds.toString()} c',
                    style: AppTypography.kH16.apply(color: AppColors.kOxford40),
                  ),
                  timerRunComplete: (attemptsEnterCode) => TextButton(
                    onPressed: () {
                      attemptsEnterCode <= 2
                          ? getIt<AuthenticationErrorTimerBloc>().add(
                              const AuthenticationErrorTimerEvent
                                      .setTimerInitial(
                                  duration: Duration(seconds: 300)),
                            )
                          : getIt<AuthenticationErrorTimerBloc>().add(
                              const AuthenticationErrorTimerEvent
                                      .setTimerInitial(
                                  duration: Duration(seconds: 1800)),
                            );
                      context.pop();
                    },
                    style: TextButton.styleFrom(),
                    child: Center(
                      child: Text(
                        'Запросить звонок повторно',
                        style: AppTypography.kH16
                            .apply(color: AppColors.kPrimaryBlue),
                      ),
                    ),
                  ),
                  timerRunInProgress: (duration) => Text(
                    'Повторный звонок через ${duration.inSeconds.toString()} c',
                    style: AppTypography.kH16.apply(color: AppColors.kOxford40),
                  ),
                  timerRunPause: (duration) => const SizedBox(),
                );
              },
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHintWidget(BuildContext context) {
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

  Widget _buildInputSecureCodeWidget(
    BuildContext context,
    MaskTextInputFormatter secureCodeFormatter,
    String placeholder,
    int attemptsEnterSecureCode,
    int circularAttempt,
  ) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          focusNode: _focusNode,
          enabled: getIt<AuthenticationBloc>().attemptsEnterSecureCode > 0,
          inputFormatters: [secureCodeFormatter],
          style: AppTypography.kH24.apply(
            color: getIt<AuthenticationBloc>().attemptsEnterSecureCode == 5
                ? AppColors.kOxford
                : getIt<AuthenticationBloc>().attemptsEnterSecureCode == 0
                    ? AppColors.kPrimaryRed
                    : AppColors.kPrimaryBlue,
          ),
          autofocus: true,
          textAlign: TextAlign.center,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: placeholder,
            hintStyle: AppTypography.kH24.apply(color: AppColors.kOxford),
            alignLabelWithHint: true,
            disabledBorder: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          onChanged: (_) async {
            if (secureCodeFormatter.isFill()) {
              await _callback(context, secureCodeFormatter);
            }
          },
        ),
        if (attemptsEnterSecureCode < 5 && attemptsEnterSecureCode > 0)
          Text(
            'Номер введен неверно. Осталось ${attemptsEnterSecureCode.toString()} попытки',
            style: AppTypography.kBody14.apply(color: AppColors.kPrimaryBlue),
          ),
      ],
    );
  }

  Future<void> _callback(
    BuildContext context,
    MaskTextInputFormatter secureCodeFormatter,
  ) async {
    final deviceToken = await UserDeviceToken().setupToken();
    final unmaskedSecureCode = secureCodeFormatter.getUnmaskedText();
    getIt<AuthenticationBloc>().add(AuthenticationEvent.checkSecureCode(
      phoneNumber: widget.phoneNumber,
      secureCode: unmaskedSecureCode,
      fcmToken: deviceToken,
    ));
  }
}
