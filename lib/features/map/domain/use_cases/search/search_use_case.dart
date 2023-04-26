import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/features/clubs/domain/entities/address/search_address.dart';
import 'package:fitt/features/map/domain/repositories/search/search_repository.dart';

class SearchUseCase {
  final SearchRepository searchRepository = getIt<SearchRepository>();

  Future<List<SearchAddress>> getAddressSuggestions({
    required String query,
  }) async {
    final addressSuggestions =
        await searchRepository.getAddressSuggestions(query: query);
    return addressSuggestions;
  }
}
