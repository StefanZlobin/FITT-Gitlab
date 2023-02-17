import 'package:fitt/data/storages/local_storage.dart';
import 'package:fitt/domain/entities/user/user.dart';

class UserLocalClient {
  UserLocalClient(this._userStorage);

  final LocalStorage<Map?> _userStorage;

  Future<void> _ensureInitialized() async {
    await Future.wait([
      if (!_userStorage.isOpen) _userStorage.open(),
    ]);
  }

  Future<User?> getSignedUser() async {
    await _ensureInitialized();

    final userJson = _userStorage.get(0);
    if (userJson == null) return null;
    final res = User.fromJson(userJson.map<String, dynamic>(
        (dynamic key, dynamic value) =>
            MapEntry<String, dynamic>(key!.toString(), value)));
    return res;
  }

  Future<void> saveUser({required User user}) async {
    await _ensureInitialized();

    await _userStorage.put(0, user.toJson());
  }

  Future<void> deleteUser(User? user) async {
    await _ensureInitialized();

    await _userStorage.delete(0);
  }
}
