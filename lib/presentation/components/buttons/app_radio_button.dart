import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:flutter/material.dart';

class AppRadioButton<T> extends StatelessWidget {
  const AppRadioButton({
    Key? key,
    required this.sortingValue,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.isRadioButtonLeading = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
  }) : super(key: key);

  final String sortingValue;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final bool isRadioButtonLeading;
  final EdgeInsets padding;

  bool get active => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        padding: padding,
        height: 56,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                textDirection: isRadioButtonLeading
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                spacing: isRadioButtonLeading
                    ? 8
                    : MediaQuery.of(context).size.width -
                        (MediaQuery.of(context).size.width - 24 - 24) -
                        32,
                //: 375 - 270 - 24 - 24 - 15,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                    width: isRadioButtonLeading ? null : 270,
                    child: Text(
                      sortingValue,
                      style: AppTypography.kBody14
                          .apply(color: AppColors.kBaseBlack),
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: AppColors.kBaseWhite,
                      shape: CircleBorder(
                        side: BorderSide(
                          color: active
                              ? AppColors.kPrimaryBlue
                              : AppColors.kOxford20,
                          width: active ? 7 : 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
