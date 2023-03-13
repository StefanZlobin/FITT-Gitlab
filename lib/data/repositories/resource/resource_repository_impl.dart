import 'package:dio/dio.dart';
import 'package:fitt/data/source/remote_data_source/resource_api_client/resource_api_client.dart';
import 'package:fitt/domain/entities/facility/facility.dart';
import 'package:fitt/domain/entities/price/price.dart';
import 'package:fitt/domain/repositories/resource/resource_repository.dart';

/// Class [ResourceRepositoryImpl] wich implements [ResourceRepository]
class ResourceRepositoryImpl implements ResourceRepository {
  ResourceRepositoryImpl(this.dio, {this.baseUrl}) : _apiClient = ResourceApiClient(dio, baseUrl: baseUrl);
  final Dio dio;
  final String? baseUrl;
  final ResourceApiClient _apiClient;

  @override
  Future<List<Facility>> getFacilities() async {
    try {
      final facilities = await _apiClient.getFacilities();
      return facilities;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Price> getPrice() async {
    try {
      final price = await _apiClient.getPrice();
      return price;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
