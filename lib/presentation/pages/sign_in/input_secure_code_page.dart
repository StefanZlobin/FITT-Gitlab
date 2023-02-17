import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/tokens/user_device_token.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputSecureCodePage extends StatelessWidget {
  const InputSecureCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final secureCodeMask = '_ ' * 4;
    final secureCodeFormatter = MaskTextInputFormatter(
      mask: secureCodeMask,
      filter: {'_': RegExp(r'[0-9]')},
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          AppRoute.inputSecureCode.routeToTitle(context)!,
        ),
      ),
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        bloc: getIt<AuthenticationBloc>(),
        builder: (context, state) {
          return state.when(
            loading: () => const SizedBox(),
            loaded: (phoneNumber, secureCode, deviceToken) => Column(
              children: [
                _buildTextHintWidget(context),
                _buildInputSecureCodeWidget(
                  context,
                  secureCodeFormatter,
                  secureCodeMask,
                  phoneNumber: phoneNumber,
                ),
              ],
            ),
            error: (error) => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildTextHintWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 96, bottom: 16, left: 16, right: 16),
      child: Text(
        'Введите последние четыре цифры номера, который вам звонил',
        style: AppTypography.kH14.apply(color: AppColors.kOxford),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildInputSecureCodeWidget(BuildContext context,
      MaskTextInputFormatter secureCodeFormatter, String placeholder,
      {String? phoneNumber}) {
    return TextField(
      inputFormatters: [secureCodeFormatter],
      style: AppTypography.kH24.apply(color: AppColors.kOxford),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: placeholder,
        hintStyle: AppTypography.kH24.apply(color: AppColors.kOxford),
      ),
      keyboardType: TextInputType.phone,
      onChanged: (_) {
        if (secureCodeFormatter.isFill()) {
          _callback(
            context,
            secureCodeFormatter,
            phoneNumber: phoneNumber,
          ).then((value) => context.push(AppRoute.map.routeToPath));
        }
      },
    );
  }

  Future<void> _callback(
    BuildContext context,
    MaskTextInputFormatter secureCodeFormatter, {
    String? phoneNumber,
  }) async {
    final deviceToken = await UserDeviceToken().setupToken();
    final unmaskedSecureCode = secureCodeFormatter.getUnmaskedText();
    getIt<AuthenticationBloc>().add(AuthenticationEvent.checkSecureCode(
      phoneNumber: phoneNumber!,
      secureCode: unmaskedSecureCode,
      fcmToken: deviceToken,
    ));
  }
}
