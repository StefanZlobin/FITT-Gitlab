import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:fitt/core/locator/service_locator.dart';
import 'package:fitt/domain/entities/address/search_address.dart';
import 'package:fitt/domain/services/app_metrica/app_metrica_service.dart';
import 'package:fitt/domain/use_cases/search/search_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

EventTransformer<E> debounceDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.debounce(duration), mapper);
  };
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState.initial()) {
    on<_SearchEventSearch>(
      _onSearch,
      transformer: debounceDroppable(const Duration(milliseconds: 300)),
    );

    on<_SearchEventSuggestionTap>(
      _onSuggesstionTap,
    );
  }

  final searchUseCase = SearchUseCase();

  Future<void> _onSearch(
    _SearchEventSearch event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.length < 3) return;
    try {
      final addressSuggestions =
          await searchUseCase.getAddressSuggestions(query: event.query);
      emit(SearchState.loaded(searchAddress: addressSuggestions));
    } on Exception catch (e) {
      emit(SearchState.error(error: e.toString()));
    }
  }

  Future<void> _onSuggesstionTap(
    _SearchEventSuggestionTap event,
    Emitter<SearchState> emit,
  ) async {
    await getIt<AppMetricaService>().reportEventToAppMetrica(
      eventName: 'Пользователь воспользовался поиском',
    );
    try {
      emit(SearchState.suggesstionTapped(searchAddress: event.searchAddress));
    } on Exception catch (e) {
      emit(SearchState.error(error: e.toString()));
    }
  }
}
