part of 'is_searching_bloc.dart';

@freezed
class IsSearchingState with _$IsSearchingState {
  const factory IsSearchingState.initial({
    @Default(false) bool isSearcing,
  }) = _IsSearchingStateInitial;
}
