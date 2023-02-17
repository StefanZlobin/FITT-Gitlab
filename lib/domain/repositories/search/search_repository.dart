import 'package:fitt/domain/entities/address/search_address.dart';

abstract class SearchRepository {
  /// Get address suggestion [SearchAddress] by query
  Future<List<SearchAddress>> getAddressSuggestions({required String query});
}
