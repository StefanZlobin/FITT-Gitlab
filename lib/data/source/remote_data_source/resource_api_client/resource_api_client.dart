import 'package:dio/dio.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:retrofit/retrofit.dart';

part 'resource_api_client.g.dart';

@RestApi()
abstract class ResourceApiClient {
  factory ResourceApiClient(Dio dio, {String? baseUrl}) = _ResourceApiClient;

  @GET('/common/helpers/facilities')
  Future<List<Facility>> getFacilities();

  @GET('/common/helpers/price')
  Future<Price> getPrice();
}
