// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_clubs_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StaffClubsFiltersEvent {
  AdminClub get adminClub => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminClub adminClub) selectClub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminClub adminClub)? selectClub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminClub adminClub)? selectClub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StaffClubsFiltersEventSelectClub value)
        selectClub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersEventSelectClub value)? selectClub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersEventSelectClub value)? selectClub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffClubsFiltersEventCopyWith<StaffClubsFiltersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffClubsFiltersEventCopyWith<$Res> {
  factory $StaffClubsFiltersEventCopyWith(StaffClubsFiltersEvent value,
          $Res Function(StaffClubsFiltersEvent) then) =
      _$StaffClubsFiltersEventCopyWithImpl<$Res, StaffClubsFiltersEvent>;
  @useResult
  $Res call({AdminClub adminClub});

  $AdminClubCopyWith<$Res> get adminClub;
}

/// @nodoc
class _$StaffClubsFiltersEventCopyWithImpl<$Res,
        $Val extends StaffClubsFiltersEvent>
    implements $StaffClubsFiltersEventCopyWith<$Res> {
  _$StaffClubsFiltersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClub = null,
  }) {
    return _then(_value.copyWith(
      adminClub: null == adminClub
          ? _value.adminClub
          : adminClub // ignore: cast_nullable_to_non_nullable
              as AdminClub,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminClubCopyWith<$Res> get adminClub {
    return $AdminClubCopyWith<$Res>(_value.adminClub, (value) {
      return _then(_value.copyWith(adminClub: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StaffClubsFiltersEventSelectClubCopyWith<$Res>
    implements $StaffClubsFiltersEventCopyWith<$Res> {
  factory _$$_StaffClubsFiltersEventSelectClubCopyWith(
          _$_StaffClubsFiltersEventSelectClub value,
          $Res Function(_$_StaffClubsFiltersEventSelectClub) then) =
      __$$_StaffClubsFiltersEventSelectClubCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminClub adminClub});

  @override
  $AdminClubCopyWith<$Res> get adminClub;
}

/// @nodoc
class __$$_StaffClubsFiltersEventSelectClubCopyWithImpl<$Res>
    extends _$StaffClubsFiltersEventCopyWithImpl<$Res,
        _$_StaffClubsFiltersEventSelectClub>
    implements _$$_StaffClubsFiltersEventSelectClubCopyWith<$Res> {
  __$$_StaffClubsFiltersEventSelectClubCopyWithImpl(
      _$_StaffClubsFiltersEventSelectClub _value,
      $Res Function(_$_StaffClubsFiltersEventSelectClub) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClub = null,
  }) {
    return _then(_$_StaffClubsFiltersEventSelectClub(
      adminClub: null == adminClub
          ? _value.adminClub
          : adminClub // ignore: cast_nullable_to_non_nullable
              as AdminClub,
    ));
  }
}

/// @nodoc

class _$_StaffClubsFiltersEventSelectClub
    implements _StaffClubsFiltersEventSelectClub {
  const _$_StaffClubsFiltersEventSelectClub({required this.adminClub});

  @override
  final AdminClub adminClub;

  @override
  String toString() {
    return 'StaffClubsFiltersEvent.selectClub(adminClub: $adminClub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffClubsFiltersEventSelectClub &&
            (identical(other.adminClub, adminClub) ||
                other.adminClub == adminClub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminClub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffClubsFiltersEventSelectClubCopyWith<
          _$_StaffClubsFiltersEventSelectClub>
      get copyWith => __$$_StaffClubsFiltersEventSelectClubCopyWithImpl<
          _$_StaffClubsFiltersEventSelectClub>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdminClub adminClub) selectClub,
  }) {
    return selectClub(adminClub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AdminClub adminClub)? selectClub,
  }) {
    return selectClub?.call(adminClub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdminClub adminClub)? selectClub,
    required TResult orElse(),
  }) {
    if (selectClub != null) {
      return selectClub(adminClub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StaffClubsFiltersEventSelectClub value)
        selectClub,
  }) {
    return selectClub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersEventSelectClub value)? selectClub,
  }) {
    return selectClub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersEventSelectClub value)? selectClub,
    required TResult orElse(),
  }) {
    if (selectClub != null) {
      return selectClub(this);
    }
    return orElse();
  }
}

abstract class _StaffClubsFiltersEventSelectClub
    implements StaffClubsFiltersEvent {
  const factory _StaffClubsFiltersEventSelectClub(
          {required final AdminClub adminClub}) =
      _$_StaffClubsFiltersEventSelectClub;

  @override
  AdminClub get adminClub;
  @override
  @JsonKey(ignore: true)
  _$$_StaffClubsFiltersEventSelectClubCopyWith<
          _$_StaffClubsFiltersEventSelectClub>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StaffClubsFiltersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StaffClubsFiltersStateInitial value) initial,
    required TResult Function(_StaffClubsFiltersStateLoaded value) loaded,
    required TResult Function(_StaffClubsFiltersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult? Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult? Function(_StaffClubsFiltersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult Function(_StaffClubsFiltersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffClubsFiltersStateCopyWith<$Res> {
  factory $StaffClubsFiltersStateCopyWith(StaffClubsFiltersState value,
          $Res Function(StaffClubsFiltersState) then) =
      _$StaffClubsFiltersStateCopyWithImpl<$Res, StaffClubsFiltersState>;
}

/// @nodoc
class _$StaffClubsFiltersStateCopyWithImpl<$Res,
        $Val extends StaffClubsFiltersState>
    implements $StaffClubsFiltersStateCopyWith<$Res> {
  _$StaffClubsFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StaffClubsFiltersStateInitialCopyWith<$Res> {
  factory _$$_StaffClubsFiltersStateInitialCopyWith(
          _$_StaffClubsFiltersStateInitial value,
          $Res Function(_$_StaffClubsFiltersStateInitial) then) =
      __$$_StaffClubsFiltersStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StaffClubsFiltersStateInitialCopyWithImpl<$Res>
    extends _$StaffClubsFiltersStateCopyWithImpl<$Res,
        _$_StaffClubsFiltersStateInitial>
    implements _$$_StaffClubsFiltersStateInitialCopyWith<$Res> {
  __$$_StaffClubsFiltersStateInitialCopyWithImpl(
      _$_StaffClubsFiltersStateInitial _value,
      $Res Function(_$_StaffClubsFiltersStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StaffClubsFiltersStateInitial
    implements _StaffClubsFiltersStateInitial {
  const _$_StaffClubsFiltersStateInitial();

  @override
  String toString() {
    return 'StaffClubsFiltersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffClubsFiltersStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
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
    required TResult Function(_StaffClubsFiltersStateInitial value) initial,
    required TResult Function(_StaffClubsFiltersStateLoaded value) loaded,
    required TResult Function(_StaffClubsFiltersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult? Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult? Function(_StaffClubsFiltersStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult Function(_StaffClubsFiltersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StaffClubsFiltersStateInitial
    implements StaffClubsFiltersState {
  const factory _StaffClubsFiltersStateInitial() =
      _$_StaffClubsFiltersStateInitial;
}

/// @nodoc
abstract class _$$_StaffClubsFiltersStateLoadedCopyWith<$Res> {
  factory _$$_StaffClubsFiltersStateLoadedCopyWith(
          _$_StaffClubsFiltersStateLoaded value,
          $Res Function(_$_StaffClubsFiltersStateLoaded) then) =
      __$$_StaffClubsFiltersStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs});
}

/// @nodoc
class __$$_StaffClubsFiltersStateLoadedCopyWithImpl<$Res>
    extends _$StaffClubsFiltersStateCopyWithImpl<$Res,
        _$_StaffClubsFiltersStateLoaded>
    implements _$$_StaffClubsFiltersStateLoadedCopyWith<$Res> {
  __$$_StaffClubsFiltersStateLoadedCopyWithImpl(
      _$_StaffClubsFiltersStateLoaded _value,
      $Res Function(_$_StaffClubsFiltersStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminClubs = null,
    Object? selectedClubs = null,
  }) {
    return _then(_$_StaffClubsFiltersStateLoaded(
      adminClubs: null == adminClubs
          ? _value._adminClubs
          : adminClubs // ignore: cast_nullable_to_non_nullable
              as Map<AdminClub, bool>,
      selectedClubs: null == selectedClubs
          ? _value._selectedClubs
          : selectedClubs // ignore: cast_nullable_to_non_nullable
              as List<AdminClub>,
    ));
  }
}

/// @nodoc

class _$_StaffClubsFiltersStateLoaded implements _StaffClubsFiltersStateLoaded {
  const _$_StaffClubsFiltersStateLoaded(
      {required final Map<AdminClub, bool> adminClubs,
      final List<AdminClub> selectedClubs = const <AdminClub>[]})
      : _adminClubs = adminClubs,
        _selectedClubs = selectedClubs;

  final Map<AdminClub, bool> _adminClubs;
  @override
  Map<AdminClub, bool> get adminClubs {
    if (_adminClubs is EqualUnmodifiableMapView) return _adminClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_adminClubs);
  }

  final List<AdminClub> _selectedClubs;
  @override
  @JsonKey()
  List<AdminClub> get selectedClubs {
    if (_selectedClubs is EqualUnmodifiableListView) return _selectedClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedClubs);
  }

  @override
  String toString() {
    return 'StaffClubsFiltersState.loaded(adminClubs: $adminClubs, selectedClubs: $selectedClubs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffClubsFiltersStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._adminClubs, _adminClubs) &&
            const DeepCollectionEquality()
                .equals(other._selectedClubs, _selectedClubs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_adminClubs),
      const DeepCollectionEquality().hash(_selectedClubs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffClubsFiltersStateLoadedCopyWith<_$_StaffClubsFiltersStateLoaded>
      get copyWith => __$$_StaffClubsFiltersStateLoadedCopyWithImpl<
          _$_StaffClubsFiltersStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(adminClubs, selectedClubs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(adminClubs, selectedClubs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(adminClubs, selectedClubs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StaffClubsFiltersStateInitial value) initial,
    required TResult Function(_StaffClubsFiltersStateLoaded value) loaded,
    required TResult Function(_StaffClubsFiltersStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult? Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult? Function(_StaffClubsFiltersStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult Function(_StaffClubsFiltersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StaffClubsFiltersStateLoaded implements StaffClubsFiltersState {
  const factory _StaffClubsFiltersStateLoaded(
      {required final Map<AdminClub, bool> adminClubs,
      final List<AdminClub> selectedClubs}) = _$_StaffClubsFiltersStateLoaded;

  Map<AdminClub, bool> get adminClubs;
  List<AdminClub> get selectedClubs;
  @JsonKey(ignore: true)
  _$$_StaffClubsFiltersStateLoadedCopyWith<_$_StaffClubsFiltersStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StaffClubsFiltersStateErrorCopyWith<$Res> {
  factory _$$_StaffClubsFiltersStateErrorCopyWith(
          _$_StaffClubsFiltersStateError value,
          $Res Function(_$_StaffClubsFiltersStateError) then) =
      __$$_StaffClubsFiltersStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_StaffClubsFiltersStateErrorCopyWithImpl<$Res>
    extends _$StaffClubsFiltersStateCopyWithImpl<$Res,
        _$_StaffClubsFiltersStateError>
    implements _$$_StaffClubsFiltersStateErrorCopyWith<$Res> {
  __$$_StaffClubsFiltersStateErrorCopyWithImpl(
      _$_StaffClubsFiltersStateError _value,
      $Res Function(_$_StaffClubsFiltersStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_StaffClubsFiltersStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StaffClubsFiltersStateError implements _StaffClubsFiltersStateError {
  const _$_StaffClubsFiltersStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'StaffClubsFiltersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffClubsFiltersStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffClubsFiltersStateErrorCopyWith<_$_StaffClubsFiltersStateError>
      get copyWith => __$$_StaffClubsFiltersStateErrorCopyWithImpl<
          _$_StaffClubsFiltersStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            Map<AdminClub, bool> adminClubs, List<AdminClub> selectedClubs)?
        loaded,
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
    required TResult Function(_StaffClubsFiltersStateInitial value) initial,
    required TResult Function(_StaffClubsFiltersStateLoaded value) loaded,
    required TResult Function(_StaffClubsFiltersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult? Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult? Function(_StaffClubsFiltersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StaffClubsFiltersStateInitial value)? initial,
    TResult Function(_StaffClubsFiltersStateLoaded value)? loaded,
    TResult Function(_StaffClubsFiltersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StaffClubsFiltersStateError implements StaffClubsFiltersState {
  const factory _StaffClubsFiltersStateError({required final String error}) =
      _$_StaffClubsFiltersStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_StaffClubsFiltersStateErrorCopyWith<_$_StaffClubsFiltersStateError>
      get copyWith => throw _privateConstructorUsedError;
}
