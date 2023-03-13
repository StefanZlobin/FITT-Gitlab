import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/authentication_error_timer/authentication_error_timer_bloc.dart';
import 'package:fitt/domain/blocs/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RepeatCallAfter extends StatelessWidget {
  const RepeatCallAfter({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          bloc: getIt<LoginBloc>(),
          listener: (context, state) {
            state.whenOrNull(
              error: (error, _, __) {
                getIt<AuthenticationErrorTimerBloc>().state.whenOrNull(
                  timerInitial: (duration) {
                    getIt<AuthenticationErrorTimerBloc>().add(
                      AuthenticationErrorTimerEvent.timerStarted(
                        duration: duration,
                      ),
                    );
                    getIt<AuthenticationErrorTimerBloc>(
                            instanceName: 'inputPhonePage')
                        .add(
                      AuthenticationErrorTimerEvent.timerStarted(
                        duration: duration,
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ],
      child: BlocBuilder<AuthenticationErrorTimerBloc,
          AuthenticationErrorTimerState>(
        bloc: getIt<AuthenticationErrorTimerBloc>(),
        builder: (context, state) {
          return state.when(
            timerInitial: (duration) => _buildTextRepeatCall(duration),
            timerRunInProgress: (duration) => _buildTextRepeatCall(duration),
            timerRunComplete: (countTimerEnd) {
              getIt<LoginBloc>().countSecureCodeEntryAttempts = 5;
              return GestureDetector(
                onTap: () {
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
