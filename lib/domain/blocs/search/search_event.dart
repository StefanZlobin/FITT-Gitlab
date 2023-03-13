part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({required String query}) = _SearchEventSearch;
  const factory SearchEvent.suggestionTap({required SearchAddress searchAddress}) = _SearchEventSuggestionTap;
}
