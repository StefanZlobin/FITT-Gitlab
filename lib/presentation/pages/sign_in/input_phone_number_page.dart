import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/presentation/app.dart';
import 'package:fitt/presentation/components/auth_user_disclaimer.dart';
import 'package:fitt/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputPhoneNumberPage extends StatefulWidget {
  const InputPhoneNumberPage({super.key});

  @override
  State<InputPhoneNumberPage> createState() => _InputPhoneNumberPageState();
}

class _InputPhoneNumberPageState extends State<InputPhoneNumberPage> {
  bool _maskComplete = false;
  final phoneNumberMask = '___) ___ - __ - __ ';
  final placeholder = '_ _ _) _ _ _ - _ _ - _ _ ';
  late final phoneNumberFormatter = MaskTextInputFormatter(
    mask: phoneNumberMask,
    filter: {'_': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageTitle(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: const Icon(
            AppIcons.arr_big_left,
            color: AppColors.kBaseBlack,
          ),
        ),
        title: Text(L.of(context).inputPhoneNumber),
      ),
      body: Column(
        children: [
          _buildTextHintWidget(context),
          _buildInputPhoneNumberWidget(
            context,
            phoneNumberFormatter,
            placeholder,
          ),
          const Expanded(child: SizedBox()),
          const AuthUserDisclaimer(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          ),
          BlocBuilder<AuthenticationErrorTimerBloc,
              AuthenticationErrorTimerState>(
            bloc: getIt<AuthenticationErrorTimerBloc>(),
            builder: (context, state) {
              return state.when(
                timerInitial: (_) =>
                    _buildCompleteButton(context, enabled: true),
                timerRunInProgress: (_) =>
                    _buildCompleteButton(context, enabled: false),
                timerRunPause: (_) => const SizedBox(),
                timerRunComplete: (_) =>
                    _buildCompleteButton(context, enabled: true),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Container _buildCompleteButton(
    BuildContext context, {
    required bool enabled,
  }) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: 56,
      child: _maskComplete && enabled
          ? ElevatedButton(
              onPressed: () => callback(context, phoneNumberFormatter),
              child: const Text('Продолжить'),
            )
          : const ElevatedButton(
              onPressed: null,
              child: Text('Продолжить'),
            ),
    );
  }

  Widget _buildTextHintWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16),
      child: Text(
        getIt<AuthenticationBloc>().circularAttempt > 1
            ? 'Пожалуйста, проверьте номер телефона и состояние мобильной сети'
            : 'Введите ваш номер телефона',
        style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
      ),
    );
  }

  Widget _buildInputPhoneNumberWidget(
    BuildContext context,
    MaskTextInputFormatter phoneNumberFormatter,
    String placeholder,
  ) {
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
                  if (_maskComplete != phoneNumberFormatter.isFill()) {
                    setState(
                      () => _maskComplete = !_maskComplete,
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

  void callback(
    BuildContext context,
    MaskTextInputFormatter phoneNumberFormatter,
  ) {
    if (phoneNumberFormatter.isFill()) {
      final bloc = getIt<AuthenticationBloc>();
      final unmaskedPhoneNumber = '+7${phoneNumberFormatter.getUnmaskedText()}';
      bloc.add(AuthenticationEvent.signIn(phoneNumber: unmaskedPhoneNumber));
      getIt<AuthenticationBloc>().attemptsEnterSecureCode = 5;
      context.pushNamed(
        AppRoute.inputSecureCode.routeToPath,
        extra: unmaskedPhoneNumber,
      );
    }
  }
}
