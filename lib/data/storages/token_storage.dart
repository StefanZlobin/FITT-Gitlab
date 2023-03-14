import 'dart:convert';

import 'package:fitt/data/storages/local_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TokenStorage<T> extends LocalStorage<T> {
  TokenStorage(String name) : super(name);

  static const _encryptedStorage = FlutterSecureStorage();

  @override
  Future<void> open() async {
    final containsKey = await _encryptedStorage.read(key: name);
    if (containsKey == null) {
      final key = Hive.generateSecureKey();
      await _encryptedStorage.write(key: name, value: base64UrlEncode(key));
    }

    final encryptionKey = base64Url.decode((await _encryptedStorage.read(key: name)) ?? '');

    final res = await Hive.openBox<T>(
      name,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    backend = res;
  }
}
