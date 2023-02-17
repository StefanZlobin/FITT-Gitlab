import 'package:expandable/expandable.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class CollapsedScheduleWidget extends StatelessWidget {
  const CollapsedScheduleWidget({
    Key? key,
    required this.expandableController,
    required this.nowOpen,
    required this.willCloseAt,
    required this.willOpenAt,
  }) : super(key: key);

  final ExpandableController expandableController;
  final bool nowOpen;
  final DateTime? willCloseAt;
  final DateTime? willOpenAt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => expandableController.toggle(),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Text(
              nowOpen ? 'Сейчас открыто' : 'Сейчас заркыто',
              style: AppTypography.kH14.apply(
                color: nowOpen ? AppColors.kExtraGreen : AppColors.kPrimaryRed,
              ),
            ),
            const SizedBox(width: 16),
            if (nowOpen || willCloseAt != null)
              const Text('•', style: TextStyle(color: AppColors.kOxford20)),
            const SizedBox(width: 16),
            Text(
              nowOpen
                  ? 'Закроется в ${willCloseAt ?? DateTime.now()}'
                  : 'Откроется в ${willOpenAt ?? DateTime.now()}',
              style: AppTypography.kBody14.apply(color: AppColors.kOxford),
            ),
            Expanded(child: Container()),
            const Icon(
              AppIcons.arr_down,
              size: 10,
              color: AppColors.kOxford60,
            ),
            const SizedBox(width: 24),
          ],
        ),
      ),
    );
  }
}
