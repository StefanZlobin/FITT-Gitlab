import 'package:fitt/features/clubs/domain/entities/admin_club/admin_club.dart';
import 'package:fitt/presentation/components/menu/widget/admin_menu_tile.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/components/user_avatar.dart';
import 'package:flutter/material.dart';

class AdminMenuWidget extends StatelessWidget {
  const AdminMenuWidget({
    super.key,
    required this.adminClub,
  });

  final AdminClub adminClub;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAvatar(isAdminPage: true),
        const Separator(),
        AdminMenuTile(
          // ignore: no-empty-block
          onPressed: () {},
          title: Text(adminClub.label),
          subtitle: const Text('Администратор'),
        ),
      ],
    );
  }
}
