import 'dart:io';

import 'package:fitt/domain/entities/user/user.dart';
import 'package:rxdart/rxdart.dart';

abstract class UserRepository {
  Future<User?> getUserData();
  Future<void> updateUserData({required User user});

  Stream<User?> get user;
  BehaviorSubject<User?> get userController;
  User? get userSnapshot;

  ///Also use for upload user avatar in first time
  Future<void> updateUserAvatar({required File photo});

  ///Use for manipulate user in local db
  Future<User?> getSignedUser();
  Future<void> saveUser({required User user});
  Future<void> deleteUser();
  Future<void> logoutUser();
}
