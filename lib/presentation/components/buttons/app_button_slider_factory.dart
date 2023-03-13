import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/presentation/components/buttons/app_button_slider.dart';
import 'package:flutter/material.dart';

abstract class AppButtonSliderFactory {
  static AppButtonSlider startWorkout({
    Key? key,
    required Future<bool?> Function() action,
    bool enabled = true,
    required DateTime regAvailableTime,
    String? warningText,
  }) {
    return AppButtonSlider(
      key: key,
      icon: Icons.play_arrow_rounded,
      iconColor: const Color(0xFF63B412),
      swipedBackgroundColor: const Color(0xFFA1D271),
      enabled: enabled,
      inactiveText:
          warningText ?? 'Регистрация станет доступна\n${DateTimeUtils.fullDateTimeFormat.format(regAvailableTime)}',
      activeText: 'Начать тренировку',
      action: action,
    );
  }

  static AppButtonSlider finishWorkout({
    Key? key,
    required Future<bool?> Function() action,
    bool enabled = true,
    String? inactiveText,
  }) {
    assert(enabled || inactiveText != null);
    return AppButtonSlider(
      key: key,
      icon: Icons.stop_rounded,
      iconColor: const Color(0xFF5B78FF),
      swipedBackgroundColor: const Color(0x99F56969),
      enabled: enabled,
      inactiveText: inactiveText,
      activeText: 'Завершить тренировку',
      action: action,
    );
  }
}
