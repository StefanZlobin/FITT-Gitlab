import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/domain/entities/admin_club/admin_club.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class StaffClubsFilterRow extends StatelessWidget {
  const StaffClubsFilterRow({
    super.key,
    required this.adminClubs,
  });

  final List<AdminClub> adminClubs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.fromLTRB(16, 20, 0, 16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: adminClubs.length + 2,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildOpenFiltersButton(context);
          }
          if (index == adminClubs.length + 1) {
            return const SizedBox();
          }
          final club = adminClubs[index - 1];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9.5),
            decoration: ShapeDecoration(
              color: AppColors.kOxford.withOpacity(0),
              shape: SuperellipseShape(
                borderRadius: superellipseRadius(12),
                side: const BorderSide(color: AppColors.kOxford20),
              ),
            ),
            child: Text(
              club.label,
              style: AppTypography.kBody14.apply(
                color: AppColors.kOxford60,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildOpenFiltersButton(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 40,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            side: const BorderSide(color: AppColors.kOxford20),
          ),
        ),
        child: const Center(
          child: Icon(
            AppIcons.filters,
            size: 16,
            color: AppColors.kOxford60,
          ),
        ),
      ),
    );
  }
}
