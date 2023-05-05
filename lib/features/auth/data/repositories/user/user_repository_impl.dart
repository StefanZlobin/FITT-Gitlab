// ignore_for_file: only_throw_errors

import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitt/core/enum/authentication_status_enum.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/source/local_data_source/user_local_client/user_local_client.dart';
import 'package:fitt/data/source/remote_data_source/user_api_client/user_api_client.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/features/auth/domain/repositories/authentication/authentication_repository.dart';
import 'package:fitt/features/auth/domain/repositories/token/token_repository.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.dio, this._userLocalClient, {this.baseUrl})
      : _apiClient = UserApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final UserApiClient _apiClient;
  final UserLocalClient _userLocalClient;

  final BehaviorSubject<User?> _userController =
      BehaviorSubject.seeded(null, sync: true);
  void Function(User?) get updateUser => _userController.sink.add;
  @override
  Stream<User?> get user => _userController;

  @override
  User? get userSnapshot => _userController.valueOrNull;

  @override
  Future<User?> getUser({required bool fromCache}) async {
    late final User? user;

    user = fromCache
        ? await _userLocalClient.getSignedUser()
        : await _apiClient.getUserData();

    if (!fromCache && user != null) await saveUser(user: user);

    return user;
  }

  @override
  Future<User> updateUserData({required User user}) async {
    try {
      await _apiClient.updateUserData(user);

      await saveUser(user: user);

      return user;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<User> updateUserAvatar({required File photo}) async {
    try {
      await _apiClient.uploadProfilePhoto(photo);

      final response = await getUser(fromCache: false);

      return response!;
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> saveUser({required User user}) async {
    updateUser(user);
    await _userLocalClient.saveUser(user: user);
  }

  @override
  Future<void> logoutUser({required bool deleteUser}) async {
    if (!deleteUser) await _userLocalClient.deleteUser();
    if (!deleteUser) await _apiClient.logoutUser();
    await getIt<TokenRepository>().deleteToken();
    updateUser(null);
  }

  @override
  Future<void> deleteUser() async {
    await _apiClient.deleteUserData();
    await logoutUser(deleteUser: true);
    getIt<AuthenticationRepository>()
        .updateAuthenticationStatus(AuthenticationStatusEnum.unauthenticated);
  }

  @override
  FutureOr onDispose() {
    _userController.close();
  }
}
