abstract class LoginRepository {
  Future<void> login({required String phoneNumber});
  Future<void> checkSecureCode({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  });
  Future<void> logout();
}
