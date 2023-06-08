// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_searching_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IsSearchingEvent {
  bool get isSearching => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSearching) onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSearching)? onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSearching)? onSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSearchingEventOnSearch value) onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSearchingEventOnSearch value)? onSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSearchingEventOnSearch value)? onSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsSearchingEventCopyWith<IsSearchingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsSearchingEventCopyWith<$Res> {
  factory $IsSearchingEventCopyWith(
          IsSearchingEvent value, $Res Function(IsSearchingEvent) then) =
      _$IsSearchingEventCopyWithImpl<$Res, IsSearchingEvent>;
  @useResult
  $Res call({bool isSearching});
}

/// @nodoc
class _$IsSearchingEventCopyWithImpl<$Res, $Val extends IsSearchingEvent>
    implements $IsSearchingEventCopyWith<$Res> {
  _$IsSearchingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
  }) {
    return _then(_value.copyWith(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsSearchingEventOnSearchCopyWith<$Res>
    implements $IsSearchingEventCopyWith<$Res> {
  factory _$$IsSearchingEventOnSearchCopyWith(_$IsSearchingEventOnSearch value,
          $Res Function(_$IsSearchingEventOnSearch) then) =
      __$$IsSearchingEventOnSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearching});
}

/// @nodoc
class __$$IsSearchingEventOnSearchCopyWithImpl<$Res>
    extends _$IsSearchingEventCopyWithImpl<$Res, _$IsSearchingEventOnSearch>
    implements _$$IsSearchingEventOnSearchCopyWith<$Res> {
  __$$IsSearchingEventOnSearchCopyWithImpl(_$IsSearchingEventOnSearch _value,
      $Res Function(_$IsSearchingEventOnSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
  }) {
    return _then(_$IsSearchingEventOnSearch(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsSearchingEventOnSearch implements IsSearchingEventOnSearch {
  const _$IsSearchingEventOnSearch({required this.isSearching});

  @override
  final bool isSearching;

  @override
  String toString() {
    return 'IsSearchingEvent.onSearch(isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSearchingEventOnSearch &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSearchingEventOnSearchCopyWith<_$IsSearchingEventOnSearch>
      get copyWith =>
          __$$IsSearchingEventOnSearchCopyWithImpl<_$IsSearchingEventOnSearch>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSearching) onSearch,
  }) {
    return onSearch(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSearching)? onSearch,
  }) {
    return onSearch?.call(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSearching)? onSearch,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(isSearching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSearchingEventOnSearch value) onSearch,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSearchingEventOnSearch value)? onSearch,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSearchingEventOnSearch value)? onSearch,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class IsSearchingEventOnSearch implements IsSearchingEvent {
  const factory IsSearchingEventOnSearch({required final bool isSearching}) =
      _$IsSearchingEventOnSearch;

  @override
  bool get isSearching;
  @override
  @JsonKey(ignore: true)
  _$$IsSearchingEventOnSearchCopyWith<_$IsSearchingEventOnSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IsSearchingState {
  bool get isSearcing => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSearcing) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSearcing)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSearcing)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsSearchingStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsSearchingStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsSearchingStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IsSearchingStateCopyWith<IsSearchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsSearchingStateCopyWith<$Res> {
  factory $IsSearchingStateCopyWith(
          IsSearchingState value, $Res Function(IsSearchingState) then) =
      _$IsSearchingStateCopyWithImpl<$Res, IsSearchingState>;
  @useResult
  $Res call({bool isSearcing});
}

/// @nodoc
class _$IsSearchingStateCopyWithImpl<$Res, $Val extends IsSearchingState>
    implements $IsSearchingStateCopyWith<$Res> {
  _$IsSearchingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearcing = null,
  }) {
    return _then(_value.copyWith(
      isSearcing: null == isSearcing
          ? _value.isSearcing
          : isSearcing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsSearchingStateInitialCopyWith<$Res>
    implements $IsSearchingStateCopyWith<$Res> {
  factory _$$_IsSearchingStateInitialCopyWith(_$_IsSearchingStateInitial value,
          $Res Function(_$_IsSearchingStateInitial) then) =
      __$$_IsSearchingStateInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearcing});
}

/// @nodoc
class __$$_IsSearchingStateInitialCopyWithImpl<$Res>
    extends _$IsSearchingStateCopyWithImpl<$Res, _$_IsSearchingStateInitial>
    implements _$$_IsSearchingStateInitialCopyWith<$Res> {
  __$$_IsSearchingStateInitialCopyWithImpl(_$_IsSearchingStateInitial _value,
      $Res Function(_$_IsSearchingStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearcing = null,
  }) {
    return _then(_$_IsSearchingStateInitial(
      isSearcing: null == isSearcing
          ? _value.isSearcing
          : isSearcing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsSearchingStateInitial implements _IsSearchingStateInitial {
  const _$_IsSearchingStateInitial({this.isSearcing = false});

  @override
  @JsonKey()
  final bool isSearcing;

  @override
  String toString() {
    return 'IsSearchingState.initial(isSearcing: $isSearcing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsSearchingStateInitial &&
            (identical(other.isSearcing, isSearcing) ||
                other.isSearcing == isSearcing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearcing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsSearchingStateInitialCopyWith<_$_IsSearchingStateInitial>
      get copyWith =>
          __$$_IsSearchingStateInitialCopyWithImpl<_$_IsSearchingStateInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSearcing) initial,
  }) {
    return initial(isSearcing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSearcing)? initial,
  }) {
    return initial?.call(isSearcing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSearcing)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isSearcing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsSearchingStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsSearchingStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsSearchingStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _IsSearchingStateInitial implements IsSearchingState {
  const factory _IsSearchingStateInitial({final bool isSearcing}) =
      _$_IsSearchingStateInitial;

  @override
  bool get isSearcing;
  @override
  @JsonKey(ignore: true)
  _$$_IsSearchingStateInitialCopyWith<_$_IsSearchingStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}
