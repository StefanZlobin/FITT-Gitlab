part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchStateInitial;
  const factory SearchState.loaded({required List<SearchAddress> searchAddress}) = _SearchStateLoaded;
  const factory SearchState.suggesstionTapped({required SearchAddress searchAddress}) = _SearchStateSuggesstionTapped;
  const factory SearchState.error({required String error}) = _SearchStateError;
}
