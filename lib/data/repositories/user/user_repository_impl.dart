import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/data/source/local_data_source/user_local_client/user_local_client.dart';
import 'package:fitt/data/source/remote_data_source/user_api_client/user_api_client.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/repositories/authentication/auth_repository.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this.dio, this._userLocalClient, {this.baseUrl})
      : _apiClient = UserApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final UserApiClient _apiClient;
  final UserLocalClient _userLocalClient;

  final AuthRepository authRepository = getIt<AuthRepository>();

  @override
  Future<User?> getSignedUser() async {
    await authRepository.getToken();
    User? user;
    user = await _userLocalClient.getSignedUser();
    user ??= await getUserData();
    return user;
  }

  @override
  Future<void> saveUser({required User user}) async {
    await _userLocalClient.saveUser(user: user);
  }

  @override
  Future<void> deleteUser() async {
    await _apiClient.deleteUserData();
    final user = await getSignedUser();
    await _userLocalClient.deleteUser(user);
    await authRepository.signOut();
  }

  @override
  Future<void> logoutUser() async {
    final user = await getSignedUser();
    await _userLocalClient.deleteUser(user);
  }

  @override
  Future<User?> getUserData() async {
    final user = await _apiClient.getUserData();
    await saveUser(user: user);
    return user;
  }

  @override
  Future<void> updateUserAvatar({required File photo}) async {
    await _apiClient.uploadProfilePhoto(photo);
    await getUserData();
  }

  @override
  Future<void> updateUserData({required User user}) async {
    await _apiClient.updateUserData(user);
    await saveUser(user: user);
  }
}
