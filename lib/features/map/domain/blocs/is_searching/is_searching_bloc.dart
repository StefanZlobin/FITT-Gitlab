import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'is_searching_bloc.freezed.dart';
part 'is_searching_event.dart';
part 'is_searching_state.dart';

class IsSearchingBloc extends Bloc<IsSearchingEvent, IsSearchingState> {
  IsSearchingBloc() : super(const _IsSearchingStateInitial()) {
    on<IsSearchingEventOnSearch>(_onIsSearchingEventOnSearch);
  }

  void _onIsSearchingEventOnSearch(
    IsSearchingEventOnSearch event,
    Emitter<IsSearchingState> emit,
  ) {
    emit(IsSearchingState.initial(isSearcing: event.isSearching));
  }
}
