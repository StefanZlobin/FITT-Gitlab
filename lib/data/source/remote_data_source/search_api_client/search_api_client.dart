import 'package:dio/dio.dart';
import 'package:fitt/domain/entities/address/search_address.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_client.g.dart';

@RestApi()
abstract class SearchApiClient {
  factory SearchApiClient(Dio dio, {String? baseUrl}) = _SearchApiClient;

  @GET('/common/helpers/suggestions/address')
  Future<List<SearchAddress>> getAddressSuggestions(
    @Query('address_part') String? address,
  );
}
