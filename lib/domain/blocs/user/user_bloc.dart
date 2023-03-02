import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/use_cases/user/user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const _UserStateLoading()) {
    on<_UserEventLogout>((event, emit) async {
      try {
        await userUseCase.logoutUser();
        emit(const _UserStateLoadedWithNoUser());
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    on<_UserEventDeleteAccount>((event, emit) async {
      try {
        await userUseCase.deleteUser();
        emit(const _UserStateLoadedWithNoUser());
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    on<_UserEventCheckUser>((event, emit) async {
      try {
        final user = await userUseCase.getSignedUser();
        if (user == null) {
          emit(const _UserStateLoadedWithNoUser());
        }
        emit(_UserStateLoaded(user: user));
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    on<_UserEventGetUserFromNetwork>((event, emit) async {
      try {
        final user = await userUseCase.getUserFromNetwork();
        if (user == null) {
          emit(const _UserStateLoadedWithNoUser());
        }
        emit(_UserStateLoaded(user: user));
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    on<_UserEventUpdateUserData>((event, emit) async {
      try {
        await userUseCase.updateUserData(user: event.user);
        add(const _UserEventGetUserFromNetwork());
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    on<_UserEventUpdateUserAvatar>((event, emit) async {
      try {
        await userUseCase.updateUserAvatar(photo: event.avatar);
        add(const _UserEventGetUserFromNetwork());
      } on Exception catch (e) {
        emit(_UserStateError(error: e.toString()));
      }
    });

    add(const _UserEventCheckUser());
  }
  final userUseCase = UserUseCase();
}
