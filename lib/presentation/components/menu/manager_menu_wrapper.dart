import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/admin_clubs/admin_clubs_cubit.dart';
import 'package:fitt/presentation/components/menu/user_not_detected.dart';
import 'package:fitt/presentation/components/menu/widget/manager_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ManagerMenuWrapper extends StatelessWidget {
  const ManagerMenuWrapper({super.key});

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
        child: BlocBuilder<AdminClubsCubit, AdminClubsState>(
          bloc: getIt<AdminClubsCubit>(),
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loaded: (adminClubs, _) => ManagerMenuWidget(
                adminClubs: adminClubs,
              ),
              error: (error) => const UserNotDetected(),
            );
          },
        ),
      ),
    );
  }
}
