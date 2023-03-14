import 'package:date_field/date_field.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/datetime_utils.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:flutter/material.dart';

class AppDateForm extends StatelessWidget {
  const AppDateForm({
    super.key,
    required this.helper,
    this.padding = const EdgeInsets.only(top: 24, left: 16, right: 16),
    this.placeholder,
    this.initialValue,
    this.onDateSelected,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.validator,
    this.errorText,
  });

  final Widget helper;
  final EdgeInsets padding;
  final String? placeholder;
  final DateTime? initialValue;
  final ValueChanged<DateTime>? onDateSelected;
  final ValueChanged<DateTime?>? onSaved;
  final ValueChanged<DateTime?>? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onTap;
  final String? Function(DateTime? value)? validator;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
            child: helper,
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              SizedBox(
                height: 75,
                child: DateTimeFormField(
                  initialValue: initialValue,
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  dateTextStyle:
                      AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
                  dateFormat: DateTimeUtils.dateFormatDetailed,
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle:
                        AppTypography.kBody14.apply(color: AppColors.kOxford40),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.5,
                      horizontal: 16,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.kOxford20),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.kOxford20),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.kOxford),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.kPrimaryRed),
                    ),
                    errorText: errorText,
                    errorStyle: AppTypography.kBody14.apply(
                      color: AppColors.kPrimaryRed,
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: AppColors.kSideRed),
                    ),
                  ),
                  validator: validator,
                  onSaved: onSaved,
                  onDateSelected: onDateSelected,
                ),
              ),
              const CenterRight(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    AppIcons.calendar_select,
                    color: AppColors.kOxford40,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
