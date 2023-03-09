// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clock/clock.dart';
import 'package:fitt/core/constants/app_colors.dart';
import 'package:fitt/core/constants/app_typography.dart';
import 'package:fitt/core/constants/border_avatar_radius.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/superellipse.dart';
import 'package:fitt/core/utils/app_icons.dart';
import 'package:fitt/core/utils/widget_alignments.dart';
import 'package:fitt/core/validation/date_validator.dart';
import 'package:fitt/core/validation/email_validator.dart';
import 'package:fitt/core/validation/name_validator.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/cubits/account_save_button/account_save_button_cubit.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/presentation/components/buttons/app_elevated_button.dart';
import 'package:fitt/presentation/components/separator.dart';
import 'package:fitt/presentation/dialogs/delete_user_account_dialog.dart';
import 'package:fitt/presentation/forms/app_date_form.dart';
import 'package:fitt/presentation/forms/app_gender_form.dart';
import 'package:fitt/presentation/forms/app_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final formFieldKey = GlobalKey<FormFieldState>();
    final ImagePicker imagePicker = ImagePicker();
    final controller = TextEditingController();

    final nameValidator = NameValidator();
    final dateValidator = DateValidator();
    final emailValidator = EmailValidator();
    final phoneFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {'#': RegExp(r'[0-9]')},
    );

    String? newName;
    String? newSurname;
    String? newEmail;
    DateTime? newBirthday;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Личные данные'),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(AppIcons.arr_big_left),
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: getIt<UserBloc>(),
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            loadedWithNoUser: (_) => const SizedBox(),
            error: (error) => const Center(child: CircularProgressIndicator()),
            loaded: (user) {
              return Form(
                key: formFieldKey,
                child: ListView(
                  children: [
                    _buildAvatarImage(user),
                    TextButton(
                      onPressed: () async {
                        final xFile = await imagePicker.pickImage(
                          source: ImageSource.gallery,
                          //imageQuality: 5,
                        );
                        final file = File(xFile!.path);

                        final size = await file.length();
                        if (size > 5242880) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Слишком большой размер изображения')));
                          return;
                        }
                        final CroppedFile? croppedFile =
                            await ImageCropper().cropImage(
                          sourcePath: xFile.path,
                        );

                        getIt<UserBloc>().add(
                          UserEvent.updateUserAvatar(
                            avatar: File(croppedFile!.path),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      child: CenterLeft(
                        child: Text(
                          'Заменить изображение',
                          style: AppTypography.kH14
                              .apply(color: AppColors.kPrimaryBlue),
                        ),
                      ),
                    ),
                    AppTextFormField(
                      controller: user?.firstName != null ? null : controller,
                      title: const Text('Имя'),
                      initialValue: user?.firstName,
                      validator: (v) => nameValidator.getValidationErrorName(v),
                      onChanged: (value) {
                        getIt<UserBloc>().add(UserEvent.updateUserData(
                            user: user!.copyWith(firstName: value)));
                        getIt<AccountSaveButtonCubit>()
                            .disableButton(isDisabled: false);
                      },
                    ),
                    AppTextFormField(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      title: const Text('Фамилия'),
                      initialValue: user?.lastName,
                      validator: (v) => nameValidator.getValidationErrorName(v),
                      onChanged: (value) {
                        getIt<UserBloc>().add(UserEvent.updateUserData(
                            user: user!.copyWith(lastName: value)));
                        getIt<AccountSaveButtonCubit>()
                            .disableButton(isDisabled: false);
                      },
                    ),
                    AppDateForm(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      helper: const Text('Дата рождения'),
                      initialValue: user?.birthday,
                      validator: (v) => dateValidator.getValidationError(v),
                      onTap: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: clock.yearsAgo(18),
                          firstDate: clock.yearsAgo(100),
                          lastDate: clock.yearsAgo(0),
                        );
                        newBirthday = pickedDate;
                      },
                      onDateSelected: (value) {
                        getIt<UserBloc>().add(UserEvent.updateUserData(
                            user: user!.copyWith(birthday: value)));
                        getIt<AccountSaveButtonCubit>()
                            .disableButton(isDisabled: false);
                      },
                    ),
                    AppTextFormField(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      title: const Text('Номер телефона'),
                      initialValue:
                          phoneFormatter.maskText(user?.phoneNumber ?? ''),
                      readOnly: true,
                    ),
                    AppTextFormField(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      title: const Text('E-mail'),
                      initialValue: user?.email,
                      isEmailField: true,
                      validator: (v) => emailValidator.getValidationError(v),
                      onChanged: (value) {
                        getIt<UserBloc>().add(UserEvent.updateUserData(
                            user: user!.copyWith(email: value)));
                        getIt<AccountSaveButtonCubit>()
                            .disableButton(isDisabled: false);
                      },
                    ),
                    AppGenderFormField(
                      helper: const Text('Пол'),
                      user: user,
                      userGender: user?.gender ?? UserGenderEnum.male,
                    ),
                    const Separator(
                      margin:
                          EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog<void>(
                          useRootNavigator: false,
                          context: context,
                          builder: (context) {
                            return const DeleteUserAccountDialog();
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                      child: CenterLeft(
                        child: Text(
                          'Удалить мой аккаунт',
                          style: AppTypography.kH14
                              .apply(color: AppColors.kOxford40),
                        ),
                      ),
                    ),
                    _buildSaveButton(
                      user,
                      newName,
                      newSurname,
                      newBirthday,
                      newEmail,
                      context,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildSaveButton(
    User? user,
    String? newName,
    String? newSurname,
    DateTime? newBirthday,
    String? newEmail,
    BuildContext context,
  ) {
    return BlocBuilder<AccountSaveButtonCubit, AccountSaveButtonState>(
      bloc: getIt<AccountSaveButtonCubit>(),
      builder: (context, state) {
        return state.when(
          initial: () {
            return const AppElevatedButton(
              marginButton: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: Text('Сохранить'),
              isDisable: true,
            );
          },
          isDisabled: (isDisabled) {
            return AppElevatedButton(
              marginButton: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 32,
                bottom: 24,
              ),
              textButton: const Text('Сохранить'),
              isDisable: isDisabled,
              onPressed: () {
                context.pop();
              },
            );
          },
        );
      },
    );
  }

  Widget _buildAvatarImage(User? user) {
    return CachedNetworkImage(
      imageUrl: user?.avatar ?? '',
      imageBuilder: (context, imageProvider) {
        return CenterLeft(
          child: Container(
            width: 96,
            height: 96,
            margin: const EdgeInsets.fromLTRB(16, 40, 16, 16),
            decoration: ShapeDecoration(
              shape: SuperellipseShape(
                borderRadius: superellipseRadius(40),
              ),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
      placeholder: (context, url) =>
          const CenterLeft(child: CircularProgressIndicator()),
      errorWidget: (context, url, dynamic error) {
        return CenterLeft(
          child: Container(
            width: 96,
            height: 96,
            margin: const EdgeInsets.only(top: 40, left: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(96 * borderRadiusFactor),
              color: const Color(0xFFD2D2D2),
            ),
          ),
        );
      },
    );
  }
}
