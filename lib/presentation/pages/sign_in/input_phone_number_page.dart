import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:fitt/presentation/components/auth_user_disclaimer.dart';
import 'package:fitt/presentation/components/page_title.dart';
import 'package:flutter/material.dart';
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
            Icons.arrow_back,
            color: AppColors.kBaseBlack,
          ),
        ),
        title: Text(
          AppRoute.inputPhoneNumber.routeToTitle(context)!,
        ),
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
          Container(
            margin: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            height: 56,
            child: _maskComplete
                ? ElevatedButton(
                    onPressed: () => callback(context, phoneNumberFormatter),
                    child: const Text('Продолжить'),
                  )
                : const ElevatedButton(
                    onPressed: null,
                    child: Text('Продолжить'),
                  ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTextHintWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16),
      child: Text(
        'Введите ваш номер телефона',
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
      context.push(AppRoute.inputSecureCode.routeToPath);
    }
  }
}
