import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/helpers/expandable_builder.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:flutter/material.dart';

class RouteDescription extends StatelessWidget {
  const RouteDescription({
    Key? key,
    required this.routeDescription,
  }) : super(key: key);

  final String routeDescription;

  @override
  Widget build(BuildContext context) {
    Widget buildTitle(VoidCallback toggle, {required bool collapsed}) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: toggle,
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          height: 65,
          child: Row(
            children: [
              Text(
                'Как добраться',
                style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
              ),
              Expanded(
                child: CenterRight(
                  child: Material(
                    type: MaterialType.transparency,
                    child: Icon(
                      collapsed ? AppIcons.arr_down : AppIcons.arr_up,
                      size: 10,
                      color: AppColors.kBaseBlack,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ExpandableBuilder(
      collapsedBuilder: (context, toggle) {
        return buildTitle(toggle, collapsed: true);
      },
      expandedBuilder: (context, toggle) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(toggle, collapsed: false),
            Container(
              margin: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
              child: Text(
                routeDescription,
                style: AppTypography.kParagraph16
                    .apply(color: AppColors.kOxford60),
              ),
            ),
          ],
        );
      },
    );
  }
}
