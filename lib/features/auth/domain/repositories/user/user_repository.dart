// ignore_for_file: prefer_mixin

import 'dart:io';

import 'package:fitt/domain/entities/user/user.dart';
import 'package:get_it/get_it.dart';

abstract class UserRepository with Disposable {
  /// Позволяет получить пользователя из хранилища (клиента)
  /// Выбор хранилища зависит от флага [fromCache]
  Future<User?> getUser({required bool fromCache});

  /// Обновляет пользовательские данные
  Future<User> updateUserData({required User user});

  /// Обновляет аватар юзера
  Future<User> updateUserAvatar({required File photo});

  /// Получаем стрим юзера
  /// Позволяет прослушивать какие-либо изменения
  Stream<User?> get user;

  /// Позволяет получить снимок пользователя
  User? get userSnapshot;

  /// Сохраняет юзера в локальной БД
  Future<void> saveUser({required User user});

  /// Удаляет юзера из локальной БД и из сети
  Future<void> deleteUser();

  /// Сбрасывает токены в null
  Future<void> logoutUser({required bool deleteUser});
}
