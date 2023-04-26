// ignore_for_file: unused_local_variable

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/app_route_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/extensions/app_router_extension.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/features/auth/domain/blocs/input_secure_code/input_secure_code_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/login/login_bloc.dart';
import 'package:fitt/features/auth/presentation/components/repeat_call_after.dart';
import 'package:fitt/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class InputSecureCodePage extends StatelessWidget with UserMixin {
  const InputSecureCodePage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      bloc: getIt<LoginBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          loaded: () {
            if (userSnapshot == null) {
              context.pushNamed(
                AppRoute.personalData.routeToPath,
                extra: {
                  'canSkip': true,
                  'afterSignin': true,
                },
              );
            }
            if (userSnapshot!.hasFullData) {
              context.pop();
              context.pop();
            } else {
              context.pushNamed(
                AppRoute.personalData.routeToPath,
                extra: {
                  'canSkip': true,
                  'afterSignin': true,
                },
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
          children: const [
            InputSecureCodeHint(),
            InputSecureCodeForm(),
            Expanded(child: SizedBox()),
            RepeatCallAfter(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class InputSecureCodeForm extends StatelessWidget {
  const InputSecureCodeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputSecureCodeBloc, InputSecureCodeState>(
      bloc: getIt<InputSecureCodeBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () => _buildSecureCodeForm(
            context,
            null,
          ),
          loaded: () => const SizedBox(),
          error: (error, countSecureCodeEntryAttempts, _) {
            return _buildSecureCodeForm(
              context,
              countSecureCodeEntryAttempts,
            );
          },
        );
      },
    );
  }

  Column _buildSecureCodeForm(
    BuildContext context,
    int? countSecureCodeEntryAttempts,
  ) {
    final isError = countSecureCodeEntryAttempts != null &&
        countSecureCodeEntryAttempts < 5;
    return Column(
      children: [
        TextField(
          enabled: countSecureCodeEntryAttempts != 0,
          inputFormatters: [getIt<InputSecureCodeBloc>().secureCodeFormatter],
          style: isError
              ? AppTypography.kH24.apply(color: AppColors.kPrimaryBlue)
              : AppTypography.kH24.apply(color: AppColors.kOxford),
          autofocus: true,
          textAlign: TextAlign.center,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: getIt<InputSecureCodeBloc>().secureCodeMask,
            hintStyle: AppTypography.kH24.apply(color: AppColors.kOxford),
            alignLabelWithHint: true,
            disabledBorder: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          onChanged: (_) async {
            getIt<InputSecureCodeBloc>()
                .add(InputSecureCodeEvent.requestCodeVerification(
              verificationCode: getIt<InputSecureCodeBloc>()
                  .secureCodeFormatter
                  .getUnmaskedText(),
            ));
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
