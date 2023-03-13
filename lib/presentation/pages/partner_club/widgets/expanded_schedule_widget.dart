// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/string_extension.dart';
import 'package:fitt/domain/entities/work_shedule/work_shedule.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpandedScheduleWidget extends StatelessWidget {
  const ExpandedScheduleWidget({
    Key? key,
    required this.schedules,
  }) : super(key: key);

  final List<WorkSchedule> schedules;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTypography.kBody14.apply(color: AppColors.kOxford),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...schedules.map(
            (schedule) => _buildWorkScheduleRow(
              context: context,
              dayOfWeek: DateFormat.EEEE().format(schedule.startDateTime ?? DateTime.now()),
              concreteDay: schedule.isSpecial,
              open: schedule.startDateTime,
              close: schedule.endDateTime,
              isWeekend: schedule.isWeekend,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildWorkScheduleRow({
  required BuildContext context,
  required String dayOfWeek,
  required bool concreteDay,
  required DateTime? open,
  required DateTime? close,
  required bool isWeekend,
}) {
  final coral = DefaultTextStyle.of(context).style.apply(color: AppColors.kPrimaryBlue);

  final time = <Widget>[];
  const space = Text(' ');

  final _open = open;
  final _close = close;

  if (_open != null && _close != null && !isWeekend) {
    time.addAll([
      const Text('с'),
      space,
      Text(DateFormat.jm().format(_open)),
      space,
      const Text('до'),
      space,
      Text(DateFormat.jm().format(_close)),
    ]);
  } else if (isWeekend) {
    time.add(Text('выходной', style: coral));
  } else {
    assert(false, 'Both or neither of [open] and [close] should be null');
  }

  if (_open == null) return const SizedBox();

  final dayPostfix = isWeekend ? ' (${DateTimeUtils.dateFormatWithoutYear.format(_open)})' : '';

  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    child: Row(
      children: [
        Text(dayOfWeek.capitalize()),
        Text(
          dayPostfix,
          style: AppTypography.kBody14.apply(color: AppColors.kPrimaryRed),
        ),
        space,
        if (concreteDay) Text('(${DateFormat.Md().format(_open)})', style: coral),
        Expanded(child: Container()),
        ...time,
      ],
    ),
  );
}
