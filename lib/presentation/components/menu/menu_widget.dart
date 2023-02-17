import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/authentication/authentication_bloc.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/presentation/components/menu/user_detected.dart';
import 'package:fitt/presentation/components/menu/user_not_detected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<UserBloc>().add(const UserEvent.checkUser());
    getIt<AdminClubsCubit>().getAdminClubs();

    return Container(
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
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          bloc: getIt<AuthenticationBloc>(),
          listener: (context, state) {
            getIt<UserBloc>().add(const UserEvent.checkUser());
          },
          child: BlocBuilder<UserBloc, UserState>(
            bloc: getIt<UserBloc>(),
            builder: (context, state) {
              return state.when(
                loading: () => const SizedBox(),
                loaded: (user) => UserDetected(user: user),
                loadedWithNoUser: (_) => const UserNotDetected(),
                error: (error) => const UserNotDetected(),
              );
            },
          ),
        ),
      ),
    );
  }
}
