import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';
import 'package:fitt/presentation/components/buttons/app_radio_button.dart';
import 'package:flutter/material.dart';

UserGenderEnum? genderGroup;

class AppGenderFormField extends StatefulWidget {
  const AppGenderFormField({
    super.key,
    required this.helper,
    required this.userGender,
    this.user,
    this.padding = const EdgeInsets.only(top: 24, left: 16, right: 16),
  });

  final Widget helper;
  final EdgeInsets padding;
  final UserGenderEnum userGender;
  final User? user;

  @override
  State<AppGenderFormField> createState() => _AppGenderFormFieldState();
}

class _AppGenderFormFieldState extends State<AppGenderFormField>
    with UserMixin {
  UserGenderEnum? get getGenderGroup => genderGroup;

  Future<void> _onSexSelected(UserGenderEnum? gender) async {
    if (gender != genderGroup && gender != null) {
      setState(() async {
        genderGroup = gender;
        if (widget.user != null) {
          await getIt<UserRepository>().updateUserData(
            user: userSnapshot!.copyWith(gender: genderGroup),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: AppTypography.kH14.apply(color: AppColors.kBaseBlack),
            child: widget.helper,
          ),
          Row(
            children: [
              AppRadioButton<UserGenderEnum>(
                isRadioButtonLeading: true,
                sortingValue:
                    UserGenderEnum.male.genderEnumToString(UserGenderEnum.male),
                value: UserGenderEnum.male,
                groupValue: genderGroup ?? widget.userGender,
                padding: const EdgeInsets.all(0),
                onChanged: (v) => _onSexSelected(v),
              ),
              const SizedBox(width: 32),
              AppRadioButton<UserGenderEnum>(
                isRadioButtonLeading: true,
                sortingValue: UserGenderEnum.female
                    .genderEnumToString(UserGenderEnum.female),
                value: UserGenderEnum.female,
                groupValue: genderGroup ?? widget.userGender,
                padding: const EdgeInsets.all(0),
                onChanged: (v) => _onSexSelected(v),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
