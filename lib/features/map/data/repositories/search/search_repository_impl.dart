import 'package:dio/dio.dart';
import 'package:fitt/features/clubs/domain/entities/address/search_address.dart';
import 'package:fitt/features/map/data/source/remote_data_source/search_api_client/search_api_client.dart';
import 'package:fitt/features/map/domain/repositories/search/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this.dio, {this.baseUrl})
      : _apiClient = SearchApiClient(dio, baseUrl: baseUrl);

  final Dio dio;
  final String? baseUrl;
  final SearchApiClient _apiClient;

  @override
  Future<List<SearchAddress>> getAddressSuggestions({
    required String query,
  }) async {
    try {
      final addressSuggestions = await _apiClient.getAddressSuggestions(query);
      return addressSuggestions;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
