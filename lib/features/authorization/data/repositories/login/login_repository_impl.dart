// ignore_for_file: only_throw_errors

import 'package:dio/dio.dart';
import 'package:fitt/data/models/request/authentication/check_secure_code_request_body.dart';
import 'package:fitt/data/models/request/authentication/signin_request_body.dart';
import 'package:fitt/domain/errors/dio_errors.dart';
import 'package:fitt/features/authorization/data/source/remote_data_source/login_api_client.dart';
import 'package:fitt/features/authorization/domain/repositories/login/login_repository.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(
    this.dio, {
    this.baseUrl,
  }) : _loginApiClient = LoginApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final LoginApiClient _loginApiClient;

  @override
  Future<void> login({required String phoneNumber}) async {
    try {
      await _loginApiClient.login(SignInRequestBody(phoneNumber));
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> checkSecureCode({
    required String phoneNumber,
    required String secureCode,
    required String fcmToken,
  }) async {
    try {
      await _loginApiClient.checkSecureCode(CheckSecureCodeRequestBody(
        phoneNumber,
        secureCode,
        fcmToken,
      ));
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _loginApiClient.logout();
    } on DioError catch (e, stackTrace) {
      await Sentry.captureException(
        e,
        stackTrace: stackTrace,
      );
      throw NetworkExceptions.getDioException(e);
    }
  }
}
