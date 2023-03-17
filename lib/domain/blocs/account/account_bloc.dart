import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitt/core/enum/user_gender_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:fitt/core/utils/mixins/user_mixin.dart';
import 'package:fitt/domain/blocs/user/user_bloc.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/models/account_user_birthday.dart';
import 'package:fitt/domain/models/account_user_email.dart';
import 'package:fitt/domain/models/account_user_first_name.dart';
import 'package:fitt/domain/models/account_user_gender.dart';
import 'package:fitt/domain/models/account_user_second_name.dart';
import 'package:fitt/domain/use_cases/user/user_use_case.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> with UserMixin {
  AccountBloc() : super(const _AccountStateInitial()) {
    on<_AccountEventFirstNameChanged>(_onAccountEventFirstNameChanged);
    on<_AccountEventSecondNameChanged>(_onAccountEventSecondNameChanged);
    on<_AccountEventBirthdayChanged>(_onAccountEventBirthdayChanged);
    on<_AccountEventEmailChanged>(_onAccountEventEmailChanged);
    on<_AccountEventGenderChanged>(_onAccountEventGenderChanged);
    on<_AccountEventAccountSubmitted>(_onAccountEventAccountSubmitted);
  }

  final userUserCase = UserUseCase();

  _AccountStateFormChanged get _state => state.maybeMap(
        formChanged: (s) => s,
        orElse: _AccountStateFormChanged(
          firstName: AccountUserFirstName.dirty(userSnapshot?.firstName ?? ''),
          secondName: AccountUserSecondName.dirty(userSnapshot?.lastName ?? ''),
          birthday: AccountUserBirthday.dirty(
            userSnapshot?.birthday.toString() ?? '',
          ),
          email: AccountUserEmail.dirty(userSnapshot?.email ?? ''),
          gender: AccountUserGender.dirty(
            userSnapshot?.gender ?? UserGenderEnum.other,
          ),
        ).copyWith,
      );
  void _onAccountEventFirstNameChanged(
    _AccountEventFirstNameChanged event,
    Emitter<AccountState> emit,
  ) {
    final firstUsername = AccountUserFirstName.dirty(event.firstName);
    emit(_state.copyWith(
      firstName: firstUsername,
      status: Formz.validate([
        firstUsername,
        _state.secondName!,
        _state.birthday!,
        _state.email!,
        _state.gender!,
      ]),
    ));
  }

  void _onAccountEventSecondNameChanged(
    _AccountEventSecondNameChanged event,
    Emitter<AccountState> emit,
  ) {
    final secondUsername = AccountUserSecondName.dirty(event.secondName);
    emit(_state.copyWith(
      secondName: secondUsername,
      status: Formz.validate([
        secondUsername,
        _state.firstName!,
        _state.email!,
        _state.birthday!,
        _state.gender!,
      ]),
    ));
  }

  void _onAccountEventBirthdayChanged(
    _AccountEventBirthdayChanged event,
    Emitter<AccountState> emit,
  ) {
    final birthday = AccountUserBirthday.dirty(event.birthday);
    emit(_state.copyWith(
      birthday: birthday,
      status: Formz.validate([
        birthday,
        _state.firstName!,
        _state.secondName!,
        _state.email!,
        _state.gender!,
      ]),
    ));
  }

  void _onAccountEventEmailChanged(
    _AccountEventEmailChanged event,
    Emitter<AccountState> emit,
  ) {
    final email = AccountUserEmail.dirty(event.email);
    emit(_state.copyWith(
      email: email,
      status: Formz.validate([
        email,
        _state.birthday!,
        _state.firstName!,
        _state.secondName!,
        _state.gender!,
      ]),
    ));
  }

  void _onAccountEventGenderChanged(
    _AccountEventGenderChanged event,
    Emitter<AccountState> emit,
  ) {
    final gender = AccountUserGender.dirty(event.gender);
    emit(_state.copyWith(
      gender: gender,
      status: Formz.validate([
        gender,
        _state.firstName!,
        _state.secondName!,
        _state.email!,
        _state.birthday!,
      ]),
    ));
  }

  Future<void> _onAccountEventAccountSubmitted(
    _AccountEventAccountSubmitted event,
    Emitter<AccountState> emit,
  ) async {
    final userData = User(
      firstName: _state.firstName?.value ?? userSnapshot?.firstName,
      patronomicName: '',
      lastName: _state.secondName?.value ?? userSnapshot?.lastName,
      birthday: _state.birthday != null
          ? dateFromString(_state.birthday!.value)
          : userSnapshot?.birthday,
      email: _state.email?.value ?? userSnapshot?.email,
      role: userSnapshot?.role,
      gender: _state.gender?.value ?? userSnapshot?.gender,
      phoneNumber: userSnapshot?.phoneNumber,
      avatar: userSnapshot?.avatar,
    );
    try {
      await userUserCase.updateUserData(user: userData);
      getIt<UserBloc>().add(const UserEvent.checkUser());
      emit(const AccountState.initial());
    } on NetworkExceptions catch (e) {
      emit(AccountState.error(error: NetworkExceptions.getErrorMessage(e)));
    }
  }
}
