import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class DayTile extends StatelessWidget {
  const DayTile({
    super.key,
    required this.dateSlot,
    required this.active,
    required this.onPressed,
  });

  final DateTime dateSlot;
  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 96,
        height: 144,
        margin: const EdgeInsets.only(right: 4),
        decoration: ShapeDecoration(
          color: active ? AppColors.kPrimaryBlue : Colors.white,
          shape: SuperellipseShape(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(48),
              bottomLeft: Radius.circular(48),
              bottomRight: Radius.circular(48),
              topLeft: Radius.circular(48),
            ),
            side: BorderSide(
                color: active ? AppColors.kPrimaryBlue : AppColors.kOxford20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                dateSlot.day.toString(),
                style: AppTypography.kH48.apply(
                    color: active ? AppColors.kBaseWhite : AppColors.kOxford60),
              ),
              Text(
                DateFormat.MMMMd().format(dateSlot).split(' ').last,
                style: AppTypography.kBody14.apply(
                    color: active
                        ? AppColors.kBaseWhite.withOpacity(.6)
                        : AppColors.kOxford20),
              ),
              const SizedBox(height: 16),
              Text(
                DateFormat.E().format(dateSlot),
                style: AppTypography.kBody14.apply(
                    color: active ? AppColors.kBaseWhite : AppColors.kOxford60),
              ),
              const SizedBox(height: 8),
              Container(
                width: 24,
                height: 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: active ? AppColors.kBaseWhite : AppColors.kPrimaryBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
