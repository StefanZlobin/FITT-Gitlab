// ignore_for_file: only_throw_errors

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/source/local_data_source/user_local_client/user_local_client.dart';
import 'package:fitt/data/source/remote_data_source/user_api_client/user_api_client.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.dio, this._userLocalClient, {this.baseUrl})
      : _apiClient = UserApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final UserApiClient _apiClient;
  final UserLocalClient _userLocalClient;

  final AuthRepository authRepository = getIt<AuthRepository>();

  final BehaviorSubject<User?> _userController = BehaviorSubject(sync: true);
  void Function(User?) get updateUser => _userController.sink.add;

  @override
  Stream<User?> get user => _userController;
  @override
  BehaviorSubject<User?> get userController => _userController;
  @override
  User? get userSnapshot => _userController.value;

  @override
  Future<User?> getSignedUser() async {
    await authRepository.getToken();
    User? user;
    //user = await _userLocalClient.getSignedUser();
    user ??= await getUserData();
    if (user != null) updateUser(user);
    return user;
  }

  @override
  Future<void> saveUser({required User user}) async {
    await _userLocalClient.saveUser(user: user);
  }

  @override
  Future<void> deleteUser() async {
    try {
      final user = await getSignedUser();
      await _apiClient.deleteUserData();
      await _userLocalClient.deleteUser(user);
      await authRepository.signOut();
      updateUser(null);
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> logoutUser() async {
    final user = await getSignedUser();
    await _userLocalClient.deleteUser(user);
    updateUser(null);
  }

  @override
  Future<User?> getUserData() async {
    final user = await _apiClient.getUserData();
    await saveUser(user: user);
    updateUser(user);
    return user;
  }

  @override
  Future<void> updateUserAvatar({required File photo}) async {
    try {
      await _apiClient.uploadProfilePhoto(photo);
      await getUserData();
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> updateUserData({required User user}) async {
    try {
      await _apiClient.updateUserData(user);
      await saveUser(user: user);
      updateUser(user);
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  void dispose() {
    _userController.close();
  }
}
