import 'dart:io';

import 'package:fitt/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<User?> getUserData();
  Future<void> updateUserData({required User user});

  ///Also use for upload user avatar in first time
  Future<void> updateUserAvatar({required File photo});

  ///Use for manipulate user in local db
  Future<User?> getSignedUser();
  Future<void> saveUser({required User user});
  Future<void> deleteUser();
  Future<void> logoutUser();
}
