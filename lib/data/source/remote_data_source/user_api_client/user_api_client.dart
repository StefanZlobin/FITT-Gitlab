import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fitt/domain/entities/user/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api_client.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String? baseUrl}) = _UserApiClient;

  @GET('user/accounts/profile/')
  Future<User> getUserData();

  @PATCH('user/accounts/profile/')
  Future<void> updateUserData(@Body() User user);

  @DELETE('user/accounts/profile/')
  Future<void> deleteUserData();

  @POST('user/accounts/profile/photo/')
  @MultiPart()
  Future<void> uploadProfilePhoto(
    @Part(name: 'photo') File photo,
  );
}
