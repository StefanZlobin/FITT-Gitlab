import 'package:fitt/data/storages/token_storage.dart';
import 'package:fitt/domain/entities/jwt_token/token_pair.dart';

class AuthLocalClient {
  AuthLocalClient(this.tokenStorage);

  final TokenStorage<Map?> tokenStorage;

  Future<void> _ensureInitialized() async {
    await Future.wait([
      if (!tokenStorage.isOpen) tokenStorage.open(),
    ]);
  }

  Future<TokenPair?> getToken() async {
    await _ensureInitialized();

    final tokenJson = tokenStorage.get(0);
    return tokenJson == null
        ? null
        : TokenPair.fromJson(
            tokenJson.map<String, dynamic>((dynamic key, dynamic value) =>
                MapEntry<String, dynamic>(key.toString(), value)),
          );
  }

  Future<void> saveToken({required TokenPair token}) async {
    await _ensureInitialized();

    await tokenStorage.put(0, token.toJson());
  }

  Future<void> deleteToken() async {
    await _ensureInitialized();

    await tokenStorage.delete(0);
  }
}
