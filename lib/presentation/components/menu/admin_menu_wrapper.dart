import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/cubits/admin_club/admin_club_cubit.dart';
import 'package:fitt/presentation/components/menu/user_not_detected.dart';
import 'package:fitt/presentation/components/menu/widget/admin_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AdminMenuWrapper extends StatelessWidget {
  const AdminMenuWrapper({super.key});

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
        child: BlocBuilder<AdminClubCubit, AdminClubState>(
          bloc: getIt<AdminClubCubit>(),
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loaded: (adminClub) => AdminMenuWidget(adminClub: adminClub),
              error: (error) => const UserNotDetected(),
            );
          },
        ),
      ),
    );
  }
}
