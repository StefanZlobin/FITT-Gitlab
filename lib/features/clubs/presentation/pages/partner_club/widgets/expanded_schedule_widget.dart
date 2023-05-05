// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/extensions/string_extension.dart';
import 'package:fitt/features/clubs/domain/entities/work_shedule/work_shedule.dart';
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
              dayOfWeek: DateFormat.EEEE().format(schedule.date!),
              concreteDay: schedule.isSpecial,
              open: schedule.startDateTime,
              close: schedule.endDateTime,
              isWeekend: schedule.isWeekend,
              isException: schedule.isSpecial,
              date: schedule.date!,
              label: schedule.label ?? '',
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
  required bool isException,
  required DateTime date,
  required String label,
}) {
  final coral =
      DefaultTextStyle.of(context).style.apply(color: AppColors.kPrimaryRed);

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
  } else if (isWeekend || isException) {
    time.add(Text(label, style: coral));
  } else {
    assert(false, 'Both or neither of [open] and [close] should be null');
  }

  final dayPostfix =
      isException ? ' (${DateTimeUtils.dateFormatShort.format(date)})' : '';

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
        Expanded(child: Container()),
        ...time,
      ],
    ),
  );
}
