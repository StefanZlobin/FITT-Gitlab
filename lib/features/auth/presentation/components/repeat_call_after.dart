import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/auth/domain/blocs/input_secure_code/input_secure_code_bloc.dart';
import 'package:fitt/features/auth/domain/blocs/login_error_timer/login_error_timer_bloc.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RepeatCallAfter extends StatelessWidget {
  const RepeatCallAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginErrorTimerBloc, LoginErrorTimerState>(
      bloc: getIt<LoginErrorTimerBloc>(),
      builder: (context, state) {
        return state.when(
          timerInitial: (duration) => _buildTextRepeatCall(duration),
          timerRunInProgress: (duration) => _buildTextRepeatCall(duration),
          timerRunComplete: (countTimerEnd, duration) {
            getIt<InputSecureCodeBloc>().countSecureCodeEntryAttempts = 5;
            return GestureDetector(
              onTap: () {
                late final Duration duration;
                if (countTimerEnd > 2) {
                  duration = const Duration(minutes: 30);
                } else if (countTimerEnd >= 1) {
                  duration = const Duration(minutes: 5);
                }
                getIt<LoginErrorTimerBloc>()
                    .add(LoginErrorTimerEvent.setTimerInitial(
                  duration: duration,
                ));
                getIt<AuthenticationRepository>().updateAuthenticationStatus(
                  AuthenticationStatusEnum.unknown,
                );
                context.pop();
              },
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
    );
  }

  Text _buildTextRepeatCall(Duration callAfter) {
    return Text(
      'Повторный звонок через ${callAfter.inSeconds} c',
      style: AppTypography.kH16.apply(color: AppColors.kOxford40),
    );
  }
}
