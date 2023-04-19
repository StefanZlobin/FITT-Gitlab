import 'dart:io';

import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/domain/repositories/user/user_repository.dart';

class UserUseCase {
  final userRepository = getIt<UserRepository>();

  Future<void> updateUserData({required User user}) async {
    await userRepository.updateUserData(user: user);
  }

  Future<void> updateUserAvatar({required File photo}) async {
    await userRepository.updateUserAvatar(photo: photo);
  }

  Future<User?> getUser({bool fromCache = false}) async {
    final user = await userRepository.getUser(fromCache: fromCache);
    return user;
  }

  Future<void> deleteUser() async {
    await userRepository.deleteUser();
  }

  Future<void> logoutUser() async {
    await userRepository.logoutUser();
  }
}
