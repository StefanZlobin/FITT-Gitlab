// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(SearchAddress searchAddress) suggestionTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(SearchAddress searchAddress)? suggestionTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(SearchAddress searchAddress)? suggestionTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEventSearch value) search,
    required TResult Function(_SearchEventSuggestionTap value) suggestionTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEventSearch value)? search,
    TResult? Function(_SearchEventSuggestionTap value)? suggestionTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventSearch value)? search,
    TResult Function(_SearchEventSuggestionTap value)? suggestionTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchEventSearchCopyWith<$Res> {
  factory _$$_SearchEventSearchCopyWith(_$_SearchEventSearch value, $Res Function(_$_SearchEventSearch) then) =
      __$$_SearchEventSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchEventSearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res, _$_SearchEventSearch>
    implements _$$_SearchEventSearchCopyWith<$Res> {
  __$$_SearchEventSearchCopyWithImpl(_$_SearchEventSearch _value, $Res Function(_$_SearchEventSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchEventSearch(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchEventSearch implements _SearchEventSearch {
  const _$_SearchEventSearch({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEventSearch &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventSearchCopyWith<_$_SearchEventSearch> get copyWith =>
      __$$_SearchEventSearchCopyWithImpl<_$_SearchEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(SearchAddress searchAddress) suggestionTap,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(SearchAddress searchAddress)? suggestionTap,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(SearchAddress searchAddress)? suggestionTap,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEventSearch value) search,
    required TResult Function(_SearchEventSuggestionTap value) suggestionTap,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEventSearch value)? search,
    TResult? Function(_SearchEventSuggestionTap value)? suggestionTap,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventSearch value)? search,
    TResult Function(_SearchEventSuggestionTap value)? suggestionTap,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEventSearch implements SearchEvent {
  const factory _SearchEventSearch({required final String query}) = _$_SearchEventSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchEventSearchCopyWith<_$_SearchEventSearch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchEventSuggestionTapCopyWith<$Res> {
  factory _$$_SearchEventSuggestionTapCopyWith(
          _$_SearchEventSuggestionTap value, $Res Function(_$_SearchEventSuggestionTap) then) =
      __$$_SearchEventSuggestionTapCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAddress searchAddress});

  $SearchAddressCopyWith<$Res> get searchAddress;
}

/// @nodoc
class __$$_SearchEventSuggestionTapCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchEventSuggestionTap>
    implements _$$_SearchEventSuggestionTapCopyWith<$Res> {
  __$$_SearchEventSuggestionTapCopyWithImpl(
      _$_SearchEventSuggestionTap _value, $Res Function(_$_SearchEventSuggestionTap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAddress = null,
  }) {
    return _then(_$_SearchEventSuggestionTap(
      searchAddress: null == searchAddress
          ? _value.searchAddress
          : searchAddress // ignore: cast_nullable_to_non_nullable
              as SearchAddress,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchAddressCopyWith<$Res> get searchAddress {
    return $SearchAddressCopyWith<$Res>(_value.searchAddress, (value) {
      return _then(_value.copyWith(searchAddress: value));
    });
  }
}

/// @nodoc

class _$_SearchEventSuggestionTap implements _SearchEventSuggestionTap {
  const _$_SearchEventSuggestionTap({required this.searchAddress});

  @override
  final SearchAddress searchAddress;

  @override
  String toString() {
    return 'SearchEvent.suggestionTap(searchAddress: $searchAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEventSuggestionTap &&
            (identical(other.searchAddress, searchAddress) || other.searchAddress == searchAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventSuggestionTapCopyWith<_$_SearchEventSuggestionTap> get copyWith =>
      __$$_SearchEventSuggestionTapCopyWithImpl<_$_SearchEventSuggestionTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(SearchAddress searchAddress) suggestionTap,
  }) {
    return suggestionTap(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(SearchAddress searchAddress)? suggestionTap,
  }) {
    return suggestionTap?.call(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(SearchAddress searchAddress)? suggestionTap,
    required TResult orElse(),
  }) {
    if (suggestionTap != null) {
      return suggestionTap(searchAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchEventSearch value) search,
    required TResult Function(_SearchEventSuggestionTap value) suggestionTap,
  }) {
    return suggestionTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchEventSearch value)? search,
    TResult? Function(_SearchEventSuggestionTap value)? suggestionTap,
  }) {
    return suggestionTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchEventSearch value)? search,
    TResult Function(_SearchEventSuggestionTap value)? suggestionTap,
    required TResult orElse(),
  }) {
    if (suggestionTap != null) {
      return suggestionTap(this);
    }
    return orElse();
  }
}

abstract class _SearchEventSuggestionTap implements SearchEvent {
  const factory _SearchEventSuggestionTap({required final SearchAddress searchAddress}) = _$_SearchEventSuggestionTap;

  SearchAddress get searchAddress;
  @JsonKey(ignore: true)
  _$$_SearchEventSuggestionTapCopyWith<_$_SearchEventSuggestionTap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchAddress> searchAddress) loaded,
    required TResult Function(SearchAddress searchAddress) suggesstionTapped,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchAddress> searchAddress)? loaded,
    TResult? Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchAddress> searchAddress)? loaded,
    TResult Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoaded value) loaded,
    required TResult Function(_SearchStateSuggesstionTapped value) suggesstionTapped,
    required TResult Function(_SearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoaded value)? loaded,
    TResult? Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult? Function(_SearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoaded value)? loaded,
    TResult Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchStateInitialCopyWith<$Res> {
  factory _$$_SearchStateInitialCopyWith(_$_SearchStateInitial value, $Res Function(_$_SearchStateInitial) then) =
      __$$_SearchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateInitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateInitial>
    implements _$$_SearchStateInitialCopyWith<$Res> {
  __$$_SearchStateInitialCopyWithImpl(_$_SearchStateInitial _value, $Res Function(_$_SearchStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchStateInitial implements _SearchStateInitial {
  const _$_SearchStateInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_SearchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchAddress> searchAddress) loaded,
    required TResult Function(SearchAddress searchAddress) suggesstionTapped,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchAddress> searchAddress)? loaded,
    TResult? Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchAddress> searchAddress)? loaded,
    TResult Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoaded value) loaded,
    required TResult Function(_SearchStateSuggesstionTapped value) suggesstionTapped,
    required TResult Function(_SearchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoaded value)? loaded,
    TResult? Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult? Function(_SearchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoaded value)? loaded,
    TResult Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInitial implements SearchState {
  const factory _SearchStateInitial() = _$_SearchStateInitial;
}

/// @nodoc
abstract class _$$_SearchStateLoadedCopyWith<$Res> {
  factory _$$_SearchStateLoadedCopyWith(_$_SearchStateLoaded value, $Res Function(_$_SearchStateLoaded) then) =
      __$$_SearchStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SearchAddress> searchAddress});
}

/// @nodoc
class __$$_SearchStateLoadedCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateLoaded>
    implements _$$_SearchStateLoadedCopyWith<$Res> {
  __$$_SearchStateLoadedCopyWithImpl(_$_SearchStateLoaded _value, $Res Function(_$_SearchStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAddress = null,
  }) {
    return _then(_$_SearchStateLoaded(
      searchAddress: null == searchAddress
          ? _value._searchAddress
          : searchAddress // ignore: cast_nullable_to_non_nullable
              as List<SearchAddress>,
    ));
  }
}

/// @nodoc

class _$_SearchStateLoaded implements _SearchStateLoaded {
  const _$_SearchStateLoaded({required final List<SearchAddress> searchAddress}) : _searchAddress = searchAddress;

  final List<SearchAddress> _searchAddress;
  @override
  List<SearchAddress> get searchAddress {
    if (_searchAddress is EqualUnmodifiableListView) return _searchAddress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchAddress);
  }

  @override
  String toString() {
    return 'SearchState.loaded(searchAddress: $searchAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateLoaded &&
            const DeepCollectionEquality().equals(other._searchAddress, _searchAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_searchAddress));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateLoadedCopyWith<_$_SearchStateLoaded> get copyWith =>
      __$$_SearchStateLoadedCopyWithImpl<_$_SearchStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchAddress> searchAddress) loaded,
    required TResult Function(SearchAddress searchAddress) suggesstionTapped,
    required TResult Function(String error) error,
  }) {
    return loaded(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchAddress> searchAddress)? loaded,
    TResult? Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchAddress> searchAddress)? loaded,
    TResult Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoaded value) loaded,
    required TResult Function(_SearchStateSuggesstionTapped value) suggesstionTapped,
    required TResult Function(_SearchStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoaded value)? loaded,
    TResult? Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult? Function(_SearchStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoaded value)? loaded,
    TResult Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoaded implements SearchState {
  const factory _SearchStateLoaded({required final List<SearchAddress> searchAddress}) = _$_SearchStateLoaded;

  List<SearchAddress> get searchAddress;
  @JsonKey(ignore: true)
  _$$_SearchStateLoadedCopyWith<_$_SearchStateLoaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateSuggesstionTappedCopyWith<$Res> {
  factory _$$_SearchStateSuggesstionTappedCopyWith(
          _$_SearchStateSuggesstionTapped value, $Res Function(_$_SearchStateSuggesstionTapped) then) =
      __$$_SearchStateSuggesstionTappedCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchAddress searchAddress});

  $SearchAddressCopyWith<$Res> get searchAddress;
}

/// @nodoc
class __$$_SearchStateSuggesstionTappedCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateSuggesstionTapped>
    implements _$$_SearchStateSuggesstionTappedCopyWith<$Res> {
  __$$_SearchStateSuggesstionTappedCopyWithImpl(
      _$_SearchStateSuggesstionTapped _value, $Res Function(_$_SearchStateSuggesstionTapped) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchAddress = null,
  }) {
    return _then(_$_SearchStateSuggesstionTapped(
      searchAddress: null == searchAddress
          ? _value.searchAddress
          : searchAddress // ignore: cast_nullable_to_non_nullable
              as SearchAddress,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchAddressCopyWith<$Res> get searchAddress {
    return $SearchAddressCopyWith<$Res>(_value.searchAddress, (value) {
      return _then(_value.copyWith(searchAddress: value));
    });
  }
}

/// @nodoc

class _$_SearchStateSuggesstionTapped implements _SearchStateSuggesstionTapped {
  const _$_SearchStateSuggesstionTapped({required this.searchAddress});

  @override
  final SearchAddress searchAddress;

  @override
  String toString() {
    return 'SearchState.suggesstionTapped(searchAddress: $searchAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateSuggesstionTapped &&
            (identical(other.searchAddress, searchAddress) || other.searchAddress == searchAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateSuggesstionTappedCopyWith<_$_SearchStateSuggesstionTapped> get copyWith =>
      __$$_SearchStateSuggesstionTappedCopyWithImpl<_$_SearchStateSuggesstionTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchAddress> searchAddress) loaded,
    required TResult Function(SearchAddress searchAddress) suggesstionTapped,
    required TResult Function(String error) error,
  }) {
    return suggesstionTapped(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchAddress> searchAddress)? loaded,
    TResult? Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult? Function(String error)? error,
  }) {
    return suggesstionTapped?.call(searchAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchAddress> searchAddress)? loaded,
    TResult Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (suggesstionTapped != null) {
      return suggesstionTapped(searchAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoaded value) loaded,
    required TResult Function(_SearchStateSuggesstionTapped value) suggesstionTapped,
    required TResult Function(_SearchStateError value) error,
  }) {
    return suggesstionTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoaded value)? loaded,
    TResult? Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult? Function(_SearchStateError value)? error,
  }) {
    return suggesstionTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoaded value)? loaded,
    TResult Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (suggesstionTapped != null) {
      return suggesstionTapped(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSuggesstionTapped implements SearchState {
  const factory _SearchStateSuggesstionTapped({required final SearchAddress searchAddress}) =
      _$_SearchStateSuggesstionTapped;

  SearchAddress get searchAddress;
  @JsonKey(ignore: true)
  _$$_SearchStateSuggesstionTappedCopyWith<_$_SearchStateSuggesstionTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateErrorCopyWith<$Res> {
  factory _$$_SearchStateErrorCopyWith(_$_SearchStateError value, $Res Function(_$_SearchStateError) then) =
      __$$_SearchStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_SearchStateErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateError>
    implements _$$_SearchStateErrorCopyWith<$Res> {
  __$$_SearchStateErrorCopyWithImpl(_$_SearchStateError _value, $Res Function(_$_SearchStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_SearchStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStateError implements _SearchStateError {
  const _$_SearchStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateErrorCopyWith<_$_SearchStateError> get copyWith =>
      __$$_SearchStateErrorCopyWithImpl<_$_SearchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<SearchAddress> searchAddress) loaded,
    required TResult Function(SearchAddress searchAddress) suggesstionTapped,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<SearchAddress> searchAddress)? loaded,
    TResult? Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<SearchAddress> searchAddress)? loaded,
    TResult Function(SearchAddress searchAddress)? suggesstionTapped,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoaded value) loaded,
    required TResult Function(_SearchStateSuggesstionTapped value) suggesstionTapped,
    required TResult Function(_SearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoaded value)? loaded,
    TResult? Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult? Function(_SearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoaded value)? loaded,
    TResult Function(_SearchStateSuggesstionTapped value)? suggesstionTapped,
    TResult Function(_SearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchStateError implements SearchState {
  const factory _SearchStateError({required final String error}) = _$_SearchStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_SearchStateErrorCopyWith<_$_SearchStateError> get copyWith => throw _privateConstructorUsedError;
}
