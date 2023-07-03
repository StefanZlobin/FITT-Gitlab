part of 'is_searching_bloc.dart';

@freezed
class IsSearchingEvent with _$IsSearchingEvent {
  const factory IsSearchingEvent.onSearch({
    required bool isSearching,
  }) = IsSearchingEventOnSearch;
}