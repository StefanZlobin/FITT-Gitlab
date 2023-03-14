import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/utils/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.title,
    this.padding = const EdgeInsets.only(top: 24, left: 16, right: 16),
    this.placeholder,
    this.initialValue,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.isEmailField = false,
    this.isHight = false,
    this.focusNode,
    this.errorText,
    this.controller,
  });

  final Widget title;
  final EdgeInsets padding;
  final String? placeholder;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String?>? onSaved;
  final ValueChanged<String?>? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final VoidCallback? onTap;
  final String? Function(String? value)? validator;
  final bool readOnly;
  final bool isEmailField;
  final bool isHight;
  final FocusNode? focusNode;
  final String? errorText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
            child: title,
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: isHight ? 80 : 75,
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              readOnly: readOnly,
              enabled: !readOnly,
              expands: isHight,
              maxLines: isHight ? null : 10,
              minLines: isHight ? null : 1,
              focusNode: focusNode,
              inputFormatters: [
                if (!isEmailField)
                  TextInputFormatter.withFunction(
                    (oldValue, newValue) {
                      if (newValue.text.isEmpty) {
                        return const TextEditingValue();
                      }
                      return TextEditingValue(
                        text: newValue.text.capitalize(),
                        selection: newValue.selection,
                      );
                    },
                  ),
              ],
              initialValue: initialValue,
              style: AppTypography.kBody14.apply(color: AppColors.kBaseBlack),
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                fillColor: readOnly ? AppColors.kOxford10 : null,
                filled: readOnly,
                enabled: !readOnly,
                hintText: placeholder,
                hintStyle:
                    AppTypography.kBody14.apply(color: AppColors.kOxford40),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15.5, horizontal: 16),
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
              onChanged: onChanged,
              onEditingComplete: onEditingComplete,
              onSaved: onSaved,
              onTap: onTap,
              onFieldSubmitted: onFieldSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}
