import 'package:fitt/core/enum/user_role_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/blocs/auth/auth_bloc.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/presentation/components/menu/user_detected.dart';
import 'package:fitt/presentation/components/menu/user_not_detected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuWidget extends StatelessWidget with UserMixin {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: getIt<AuthBloc>(),
      listener: (context, state) {
        state.whenOrNull(
          unknown: () => getIt<UserBloc>().add(const UserEvent.checkUser()),
          authenticated: () {
            getIt<UserBloc>().add(const UserEvent.checkUser());
            if (userSnapshot?.role == UserRoleEnum.administrator) {
              getIt<AdminClubsCubit>().getAdminClubs();
            }
          },
          unauthenticated: () {
            getIt<UserBloc>().add(const UserEvent.checkUser());
          },
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 320,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            bloc: getIt<AuthBloc>(),
            builder: (context, state) {
              return state.when(
                unknown: () => const UserNotDetected(),
                authenticated: () => const UserDetected(),
                unauthenticated: () => const UserNotDetected(),
                error: (_) => const UserNotDetected(),
              );
            },
          ),
        ),
      ),
    );
  }
}
