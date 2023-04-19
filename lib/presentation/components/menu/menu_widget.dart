import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/blocs/menu/menu_bloc.dart';
import 'package:fitt/presentation/components/menu/menu_guest.dart';
import 'package:fitt/presentation/components/menu/menu_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: BlocBuilder<MenuBloc, MenuState>(
          bloc: getIt<MenuBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () => const MenuGuest(),
              loaded: () => const MenuUser(),
              error: (_) => const MenuGuest(),
            );
          },
        ),
      ),
    );
  }
}
