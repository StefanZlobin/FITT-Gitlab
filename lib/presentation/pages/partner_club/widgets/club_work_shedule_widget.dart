// ignore_for_file: library_private_types_in_public_api

import 'package:expandable/expandable.dart';
import 'package:fitt/domain/entities/work_shedule/work_shedule.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/collapsed_shedule_widget.dart';
import 'package:fitt/presentation/pages/partner_club/widgets/expanded_schedule_widget.dart';
import 'package:flutter/material.dart';

class ClubWorkScheduleWidget extends StatefulWidget {
  const ClubWorkScheduleWidget({
    Key? key,
    required this.schedules,
    required this.nowOpen,
    required this.willCloseAt,
    required this.willOpenAt,
  })  : assert(!nowOpen || willCloseAt != null),
        super(key: key);

  final List<WorkSchedule> schedules;
  final bool nowOpen;

  /// Most close close datetime
  final DateTime? willCloseAt;

  /// Most close open datetime
  final DateTime? willOpenAt;

  @override
  _WorkScheduleWidgetState createState() => _WorkScheduleWidgetState();
}

class _WorkScheduleWidgetState extends State<ClubWorkScheduleWidget> {
  final _expandableController = ExpandableController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      controller: _expandableController,
      child: ScrollOnExpand(
        child: Expandable(
          theme: const ExpandableThemeData(
            tapBodyToExpand: true,
            useInkWell: false,
            crossFadePoint: 0,
            sizeCurve: Curves.easeOut,
          ),
          collapsed: CollapsedScheduleWidget(
            expandableController: _expandableController,
            nowOpen: widget.nowOpen,
            willCloseAt: widget.willCloseAt,
            willOpenAt: widget.willOpenAt,
          ),
          expanded: ExpandedScheduleWidget(
            schedules: widget.schedules,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _expandableController.dispose();
    super.dispose();
  }
}
