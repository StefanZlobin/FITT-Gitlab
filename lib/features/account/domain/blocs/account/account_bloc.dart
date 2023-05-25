// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/models/account_user_birthday.dart';
import 'package:fitt/domain/models/account_user_email.dart';
import 'package:fitt/domain/models/account_user_first_name.dart';
import 'package:fitt/domain/models/account_user_gender.dart';
import 'package:fitt/domain/models/account_user_second_name.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/use_cases/user/user_use_case.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> with UserMixin {
  AccountBloc() : super(const AccountState.loaded()) {
    on<_AccountEventFirstNameChanged>(_onAccountEventFirstNameChanged);
    on<_AccountEventSecondNameChanged>(_onAccountEventSecondNameChanged);
    on<_AccountEventEmailChanged>(_onAccountEventEmailChanged);
    on<_AccountEventBirthdayChanged>(_onAccountEventBirthdayChanged);
    on<_AccountEventGenderChanged>(_onAccountEventGenderChanged);
    on<_AccountEventPhotoChanged>(_onAccountEventPhotoChanged);
    on<_AccountEventAccountSubmitted>(_onAccountEventAccountSubmitted);
  }

  final userUserCase = UserUseCase();

  _AccountStateLoaded get stateLoaded => state.maybeMap(
        loaded: (s) => s,
        orElse: () => const _AccountStateLoaded(),
      );

  void _onAccountEventFirstNameChanged(
    _AccountEventFirstNameChanged event,
    Emitter<AccountState> emit,
  ) {
    final firstName = AccountUserFirstName.dirty(event.firstName);

    emit(
      stateLoaded.copyWith(
        firstName: firstName.isValid
            ? firstName
            : AccountUserFirstName.pure(firstName.value),
        isValid: Formz.validate([
          firstName,
          stateLoaded.secondName,
          stateLoaded.birthday,
          stateLoaded.email,
          stateLoaded.gender,
        ]),
        status: FormzSubmissionStatus.inProgress,
      ),
    );
  }

  void _onAccountEventSecondNameChanged(
    _AccountEventSecondNameChanged event,
    Emitter<AccountState> emit,
  ) {
    final secondName = AccountUserSecondName.dirty(event.secondName);

    emit(
      stateLoaded.copyWith(
        secondName: secondName.isValid
            ? secondName
            : AccountUserSecondName.pure(secondName.value),
        isValid: Formz.validate([
          stateLoaded.firstName,
          secondName,
          stateLoaded.birthday,
          stateLoaded.email,
          stateLoaded.gender,
        ]),
        status: FormzSubmissionStatus.inProgress,
      ),
    );
  }

  void _onAccountEventEmailChanged(
    _AccountEventEmailChanged event,
    Emitter<AccountState> emit,
  ) {
    final email = AccountUserEmail.dirty(event.email);

    emit(
      stateLoaded.copyWith(
        email: email.isValid ? email : AccountUserEmail.pure(email.value),
        isValid: Formz.validate([
          stateLoaded.firstName,
          stateLoaded.secondName,
          stateLoaded.birthday,
          email,
          stateLoaded.gender,
        ]),
        status: FormzSubmissionStatus.inProgress,
      ),
    );
  }

  void _onAccountEventBirthdayChanged(
    _AccountEventBirthdayChanged event,
    Emitter<AccountState> emit,
  ) {
    final birthday = AccountUserBirthday.dirty(event.birthday.toString());

    emit(
      stateLoaded.copyWith(
        birthday: birthday.isValid
            ? birthday
            : AccountUserBirthday.pure(birthday.value),
        isValid: Formz.validate([
          stateLoaded.firstName,
          stateLoaded.secondName,
          birthday,
          stateLoaded.email,
          stateLoaded.gender,
        ]),
        status: FormzSubmissionStatus.inProgress,
      ),
    );
  }

  void _onAccountEventGenderChanged(
    _AccountEventGenderChanged event,
    Emitter<AccountState> emit,
  ) {
    final gender = AccountUserGender.dirty(event.gender);

    emit(
      stateLoaded.copyWith(
        gender: gender.isValid ? gender : AccountUserGender.pure(gender.value),
        isValid: Formz.validate([
          stateLoaded.firstName,
          stateLoaded.secondName,
          stateLoaded.birthday,
          stateLoaded.email,
          gender,
        ]),
        status: FormzSubmissionStatus.inProgress,
      ),
    );
  }

  Future<void> _onAccountEventPhotoChanged(
    _AccountEventPhotoChanged event,
    Emitter<AccountState> emit,
  ) async {
    final PermissionStatus storageStatus = await Permission.storage.request();
    final PermissionStatus photoStatus = await Permission.photos.request();
    if ((storageStatus == PermissionStatus.denied && Platform.isAndroid) ||
        (photoStatus == PermissionStatus.denied && Platform.isIOS)) {
      emit(const AccountState.error(
        error: 'Чтобы изменить фотографию аккаунта требуется доступ к галерее',
      ));
    }
    if ((storageStatus == PermissionStatus.permanentlyDenied &&
            Platform.isAndroid) ||
        (photoStatus == PermissionStatus.permanentlyDenied && Platform.isIOS)) {
      await openAppSettings();
    }
    if ((storageStatus == PermissionStatus.granted && Platform.isAndroid) ||
        (photoStatus == PermissionStatus.granted && Platform.isIOS)) {
      try {
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Показан попап с запросом доступа к фото',
        );
        final xFile =
            await event.imagePicker.pickImage(source: ImageSource.gallery);
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Подтвержден попап с запросом доступа к фото',
        );
        final file = File(xFile!.path);
        final size = await file.length();
        if (size > 5242880) {
          emit(const AccountState.error(
            error: 'Слишком большой размер изображения',
          ));
        }
        final CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: xFile.path,
        );
        await getIt<UserRepository>()
            .updateUserAvatar(photo: File(croppedFile!.path));
      } on Exception {
        await getIt<AppMetricaService>().reportEventToAppMetrica(
          eventName: 'Не подтвержден попап с запросом доступа к фото',
        );
      }
    }
  }

  Future<void> _onAccountEventAccountSubmitted(
    _AccountEventAccountSubmitted event,
    Emitter<AccountState> emit,
  ) async {
    final firstName = AccountUserFirstName.dirty(stateLoaded.firstName.value);
    final secondName =
        AccountUserSecondName.dirty(stateLoaded.secondName.value);
    final email = AccountUserEmail.dirty(stateLoaded.email.value);
    final birthday =
        AccountUserBirthday.dirty(stateLoaded.birthday.value.toString());
    final gender = AccountUserGender.dirty(stateLoaded.gender.value);

    emit(
      stateLoaded.copyWith(
        firstName: firstName,
        secondName: secondName,
        birthday: birthday,
        email: email,
        gender: gender,
        isValid: Formz.validate([
          firstName,
          secondName,
          birthday,
          email,
          gender,
        ]),
      ),
    );

    if (stateLoaded.isValid) {
      emit(stateLoaded.copyWith(status: FormzSubmissionStatus.inProgress));
      try {
        final user = _getUserData();
        await userUserCase.updateUserData(user: user);
        emit(stateLoaded.copyWith(status: FormzSubmissionStatus.success));
      } on NetworkExceptions catch (e) {
        emit(AccountState.error(
          status: FormzSubmissionStatus.failure,
          error: NetworkExceptions.getErrorMessage(e),
        ));
      }
    }
  }

  User _getUserData() {
    final userData = User(
      firstName: stateLoaded.firstName.value.isEmpty
          ? userSnapshot?.firstName
          : stateLoaded.firstName.value,
      patronomicName: '',
      lastName: stateLoaded.secondName.value.isEmpty
          ? userSnapshot?.lastName
          : stateLoaded.secondName.value,
      birthday: stateLoaded.birthday.value.isEmpty
          ? userSnapshot?.birthday
          : dateFromString(stateLoaded.birthday.value),
      email: stateLoaded.email.value.isEmpty
          ? userSnapshot?.email
          : stateLoaded.email.value,
      role: userSnapshot?.role,
      gender: stateLoaded.gender.value == UserGenderEnum.other
          ? userSnapshot?.gender
          : stateLoaded.gender.value,
      phoneNumber: userSnapshot?.phoneNumber,
      avatar: userSnapshot?.avatar,
      wallet: userSnapshot?.wallet,
    );

    return userData;
  }
}
