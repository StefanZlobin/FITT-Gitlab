import 'dart:io';

import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:fitt/features/auth/domain/repositories/user/user_repository.dart';

class UserUseCase {
  final userRepository = getIt<UserRepository>();

  Future<void> updateUserData({required User user}) async {
    await userRepository.updateUserData(user: user);
  }

  Future<void> updateUserAvatar({required File photo}) async {
    await userRepository.updateUserAvatar(photo: photo);
  }

  Future<User?> getUser() async {
    final user = await userRepository.getUser();
    return user;
  }

  Future<void> deleteUser() async {
    await userRepository.deleteUser();
  }

  Future<void> logoutUser({required bool deleteUser}) async {
    await userRepository.logoutUser(deleteUser: deleteUser);
  }
}
