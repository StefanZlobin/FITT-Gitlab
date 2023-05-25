// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_filtering_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubFilteringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price price) priceChanged,
    required TResult Function(Facility facility) facilitiesChanged,
    required TResult Function(ClubFilters filters) filtersChanged,
    required TResult Function() clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price price)? priceChanged,
    TResult? Function(Facility facility)? facilitiesChanged,
    TResult? Function(ClubFilters filters)? filtersChanged,
    TResult? Function()? clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price price)? priceChanged,
    TResult Function(Facility facility)? facilitiesChanged,
    TResult Function(ClubFilters filters)? filtersChanged,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringEventPriceChanged value)
        priceChanged,
    required TResult Function(_ClubFilteringEventFacilitiesChanged value)
        facilitiesChanged,
    required TResult Function(_ClubFilteringEventFiltersChanged value)
        filtersChanged,
    required TResult Function(_ClubFilteringEventClearFilter value) clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult? Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult? Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult? Function(_ClubFilteringEventClearFilter value)? clearFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult Function(_ClubFilteringEventClearFilter value)? clearFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFilteringEventCopyWith<$Res> {
  factory $ClubFilteringEventCopyWith(
          ClubFilteringEvent value, $Res Function(ClubFilteringEvent) then) =
      _$ClubFilteringEventCopyWithImpl<$Res, ClubFilteringEvent>;
}

/// @nodoc
class _$ClubFilteringEventCopyWithImpl<$Res, $Val extends ClubFilteringEvent>
    implements $ClubFilteringEventCopyWith<$Res> {
  _$ClubFilteringEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClubFilteringEventPriceChangedCopyWith<$Res> {
  factory _$$_ClubFilteringEventPriceChangedCopyWith(
          _$_ClubFilteringEventPriceChanged value,
          $Res Function(_$_ClubFilteringEventPriceChanged) then) =
      __$$_ClubFilteringEventPriceChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_ClubFilteringEventPriceChangedCopyWithImpl<$Res>
    extends _$ClubFilteringEventCopyWithImpl<$Res,
        _$_ClubFilteringEventPriceChanged>
    implements _$$_ClubFilteringEventPriceChangedCopyWith<$Res> {
  __$$_ClubFilteringEventPriceChangedCopyWithImpl(
      _$_ClubFilteringEventPriceChanged _value,
      $Res Function(_$_ClubFilteringEventPriceChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_ClubFilteringEventPriceChanged(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc

class _$_ClubFilteringEventPriceChanged
    implements _ClubFilteringEventPriceChanged {
  const _$_ClubFilteringEventPriceChanged({required this.price});

  @override
  final Price price;

  @override
  String toString() {
    return 'ClubFilteringEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilteringEventPriceChanged &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilteringEventPriceChangedCopyWith<_$_ClubFilteringEventPriceChanged>
      get copyWith => __$$_ClubFilteringEventPriceChangedCopyWithImpl<
          _$_ClubFilteringEventPriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price price) priceChanged,
    required TResult Function(Facility facility) facilitiesChanged,
    required TResult Function(ClubFilters filters) filtersChanged,
    required TResult Function() clearFilter,
  }) {
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price price)? priceChanged,
    TResult? Function(Facility facility)? facilitiesChanged,
    TResult? Function(ClubFilters filters)? filtersChanged,
    TResult? Function()? clearFilter,
  }) {
    return priceChanged?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price price)? priceChanged,
    TResult Function(Facility facility)? facilitiesChanged,
    TResult Function(ClubFilters filters)? filtersChanged,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringEventPriceChanged value)
        priceChanged,
    required TResult Function(_ClubFilteringEventFacilitiesChanged value)
        facilitiesChanged,
    required TResult Function(_ClubFilteringEventFiltersChanged value)
        filtersChanged,
    required TResult Function(_ClubFilteringEventClearFilter value) clearFilter,
  }) {
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult? Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult? Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult? Function(_ClubFilteringEventClearFilter value)? clearFilter,
  }) {
    return priceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult Function(_ClubFilteringEventClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringEventPriceChanged implements ClubFilteringEvent {
  const factory _ClubFilteringEventPriceChanged({required final Price price}) =
      _$_ClubFilteringEventPriceChanged;

  Price get price;
  @JsonKey(ignore: true)
  _$$_ClubFilteringEventPriceChangedCopyWith<_$_ClubFilteringEventPriceChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubFilteringEventFacilitiesChangedCopyWith<$Res> {
  factory _$$_ClubFilteringEventFacilitiesChangedCopyWith(
          _$_ClubFilteringEventFacilitiesChanged value,
          $Res Function(_$_ClubFilteringEventFacilitiesChanged) then) =
      __$$_ClubFilteringEventFacilitiesChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Facility facility});

  $FacilityCopyWith<$Res> get facility;
}

/// @nodoc
class __$$_ClubFilteringEventFacilitiesChangedCopyWithImpl<$Res>
    extends _$ClubFilteringEventCopyWithImpl<$Res,
        _$_ClubFilteringEventFacilitiesChanged>
    implements _$$_ClubFilteringEventFacilitiesChangedCopyWith<$Res> {
  __$$_ClubFilteringEventFacilitiesChangedCopyWithImpl(
      _$_ClubFilteringEventFacilitiesChanged _value,
      $Res Function(_$_ClubFilteringEventFacilitiesChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facility = null,
  }) {
    return _then(_$_ClubFilteringEventFacilitiesChanged(
      facility: null == facility
          ? _value.facility
          : facility // ignore: cast_nullable_to_non_nullable
              as Facility,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FacilityCopyWith<$Res> get facility {
    return $FacilityCopyWith<$Res>(_value.facility, (value) {
      return _then(_value.copyWith(facility: value));
    });
  }
}

/// @nodoc

class _$_ClubFilteringEventFacilitiesChanged
    implements _ClubFilteringEventFacilitiesChanged {
  const _$_ClubFilteringEventFacilitiesChanged({required this.facility});

  @override
  final Facility facility;

  @override
  String toString() {
    return 'ClubFilteringEvent.facilitiesChanged(facility: $facility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilteringEventFacilitiesChanged &&
            (identical(other.facility, facility) ||
                other.facility == facility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, facility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilteringEventFacilitiesChangedCopyWith<
          _$_ClubFilteringEventFacilitiesChanged>
      get copyWith => __$$_ClubFilteringEventFacilitiesChangedCopyWithImpl<
          _$_ClubFilteringEventFacilitiesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price price) priceChanged,
    required TResult Function(Facility facility) facilitiesChanged,
    required TResult Function(ClubFilters filters) filtersChanged,
    required TResult Function() clearFilter,
  }) {
    return facilitiesChanged(facility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price price)? priceChanged,
    TResult? Function(Facility facility)? facilitiesChanged,
    TResult? Function(ClubFilters filters)? filtersChanged,
    TResult? Function()? clearFilter,
  }) {
    return facilitiesChanged?.call(facility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price price)? priceChanged,
    TResult Function(Facility facility)? facilitiesChanged,
    TResult Function(ClubFilters filters)? filtersChanged,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (facilitiesChanged != null) {
      return facilitiesChanged(facility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringEventPriceChanged value)
        priceChanged,
    required TResult Function(_ClubFilteringEventFacilitiesChanged value)
        facilitiesChanged,
    required TResult Function(_ClubFilteringEventFiltersChanged value)
        filtersChanged,
    required TResult Function(_ClubFilteringEventClearFilter value) clearFilter,
  }) {
    return facilitiesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult? Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult? Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult? Function(_ClubFilteringEventClearFilter value)? clearFilter,
  }) {
    return facilitiesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult Function(_ClubFilteringEventClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (facilitiesChanged != null) {
      return facilitiesChanged(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringEventFacilitiesChanged
    implements ClubFilteringEvent {
  const factory _ClubFilteringEventFacilitiesChanged(
          {required final Facility facility}) =
      _$_ClubFilteringEventFacilitiesChanged;

  Facility get facility;
  @JsonKey(ignore: true)
  _$$_ClubFilteringEventFacilitiesChangedCopyWith<
          _$_ClubFilteringEventFacilitiesChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubFilteringEventFiltersChangedCopyWith<$Res> {
  factory _$$_ClubFilteringEventFiltersChangedCopyWith(
          _$_ClubFilteringEventFiltersChanged value,
          $Res Function(_$_ClubFilteringEventFiltersChanged) then) =
      __$$_ClubFilteringEventFiltersChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClubFilters filters});

  $ClubFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_ClubFilteringEventFiltersChangedCopyWithImpl<$Res>
    extends _$ClubFilteringEventCopyWithImpl<$Res,
        _$_ClubFilteringEventFiltersChanged>
    implements _$$_ClubFilteringEventFiltersChangedCopyWith<$Res> {
  __$$_ClubFilteringEventFiltersChangedCopyWithImpl(
      _$_ClubFilteringEventFiltersChanged _value,
      $Res Function(_$_ClubFilteringEventFiltersChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_ClubFilteringEventFiltersChanged(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get filters {
    return $ClubFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_ClubFilteringEventFiltersChanged
    implements _ClubFilteringEventFiltersChanged {
  const _$_ClubFilteringEventFiltersChanged({required this.filters});

  @override
  final ClubFilters filters;

  @override
  String toString() {
    return 'ClubFilteringEvent.filtersChanged(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilteringEventFiltersChanged &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilteringEventFiltersChangedCopyWith<
          _$_ClubFilteringEventFiltersChanged>
      get copyWith => __$$_ClubFilteringEventFiltersChangedCopyWithImpl<
          _$_ClubFilteringEventFiltersChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price price) priceChanged,
    required TResult Function(Facility facility) facilitiesChanged,
    required TResult Function(ClubFilters filters) filtersChanged,
    required TResult Function() clearFilter,
  }) {
    return filtersChanged(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price price)? priceChanged,
    TResult? Function(Facility facility)? facilitiesChanged,
    TResult? Function(ClubFilters filters)? filtersChanged,
    TResult? Function()? clearFilter,
  }) {
    return filtersChanged?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price price)? priceChanged,
    TResult Function(Facility facility)? facilitiesChanged,
    TResult Function(ClubFilters filters)? filtersChanged,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringEventPriceChanged value)
        priceChanged,
    required TResult Function(_ClubFilteringEventFacilitiesChanged value)
        facilitiesChanged,
    required TResult Function(_ClubFilteringEventFiltersChanged value)
        filtersChanged,
    required TResult Function(_ClubFilteringEventClearFilter value) clearFilter,
  }) {
    return filtersChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult? Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult? Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult? Function(_ClubFilteringEventClearFilter value)? clearFilter,
  }) {
    return filtersChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult Function(_ClubFilteringEventClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringEventFiltersChanged implements ClubFilteringEvent {
  const factory _ClubFilteringEventFiltersChanged(
          {required final ClubFilters filters}) =
      _$_ClubFilteringEventFiltersChanged;

  ClubFilters get filters;
  @JsonKey(ignore: true)
  _$$_ClubFilteringEventFiltersChangedCopyWith<
          _$_ClubFilteringEventFiltersChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubFilteringEventClearFilterCopyWith<$Res> {
  factory _$$_ClubFilteringEventClearFilterCopyWith(
          _$_ClubFilteringEventClearFilter value,
          $Res Function(_$_ClubFilteringEventClearFilter) then) =
      __$$_ClubFilteringEventClearFilterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClubFilteringEventClearFilterCopyWithImpl<$Res>
    extends _$ClubFilteringEventCopyWithImpl<$Res,
        _$_ClubFilteringEventClearFilter>
    implements _$$_ClubFilteringEventClearFilterCopyWith<$Res> {
  __$$_ClubFilteringEventClearFilterCopyWithImpl(
      _$_ClubFilteringEventClearFilter _value,
      $Res Function(_$_ClubFilteringEventClearFilter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClubFilteringEventClearFilter
    implements _ClubFilteringEventClearFilter {
  const _$_ClubFilteringEventClearFilter();

  @override
  String toString() {
    return 'ClubFilteringEvent.clearFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilteringEventClearFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price price) priceChanged,
    required TResult Function(Facility facility) facilitiesChanged,
    required TResult Function(ClubFilters filters) filtersChanged,
    required TResult Function() clearFilter,
  }) {
    return clearFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price price)? priceChanged,
    TResult? Function(Facility facility)? facilitiesChanged,
    TResult? Function(ClubFilters filters)? filtersChanged,
    TResult? Function()? clearFilter,
  }) {
    return clearFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price price)? priceChanged,
    TResult Function(Facility facility)? facilitiesChanged,
    TResult Function(ClubFilters filters)? filtersChanged,
    TResult Function()? clearFilter,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringEventPriceChanged value)
        priceChanged,
    required TResult Function(_ClubFilteringEventFacilitiesChanged value)
        facilitiesChanged,
    required TResult Function(_ClubFilteringEventFiltersChanged value)
        filtersChanged,
    required TResult Function(_ClubFilteringEventClearFilter value) clearFilter,
  }) {
    return clearFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult? Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult? Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult? Function(_ClubFilteringEventClearFilter value)? clearFilter,
  }) {
    return clearFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringEventPriceChanged value)? priceChanged,
    TResult Function(_ClubFilteringEventFacilitiesChanged value)?
        facilitiesChanged,
    TResult Function(_ClubFilteringEventFiltersChanged value)? filtersChanged,
    TResult Function(_ClubFilteringEventClearFilter value)? clearFilter,
    required TResult orElse(),
  }) {
    if (clearFilter != null) {
      return clearFilter(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringEventClearFilter implements ClubFilteringEvent {
  const factory _ClubFilteringEventClearFilter() =
      _$_ClubFilteringEventClearFilter;
}

/// @nodoc
mixin _$ClubFilteringState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringStateInitial value) initial,
    required TResult Function(_ClubFilteringStateLoaded value) loaded,
    required TResult Function(_ClubFilteringStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringStateInitial value)? initial,
    TResult? Function(_ClubFilteringStateLoaded value)? loaded,
    TResult? Function(_ClubFilteringStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringStateInitial value)? initial,
    TResult Function(_ClubFilteringStateLoaded value)? loaded,
    TResult Function(_ClubFilteringStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFilteringStateCopyWith<$Res> {
  factory $ClubFilteringStateCopyWith(
          ClubFilteringState value, $Res Function(ClubFilteringState) then) =
      _$ClubFilteringStateCopyWithImpl<$Res, ClubFilteringState>;
}

/// @nodoc
class _$ClubFilteringStateCopyWithImpl<$Res, $Val extends ClubFilteringState>
    implements $ClubFilteringStateCopyWith<$Res> {
  _$ClubFilteringStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClubFilteringStateInitialCopyWith<$Res> {
  factory _$$_ClubFilteringStateInitialCopyWith(
          _$_ClubFilteringStateInitial value,
          $Res Function(_$_ClubFilteringStateInitial) then) =
      __$$_ClubFilteringStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClubFilteringStateInitialCopyWithImpl<$Res>
    extends _$ClubFilteringStateCopyWithImpl<$Res, _$_ClubFilteringStateInitial>
    implements _$$_ClubFilteringStateInitialCopyWith<$Res> {
  __$$_ClubFilteringStateInitialCopyWithImpl(
      _$_ClubFilteringStateInitial _value,
      $Res Function(_$_ClubFilteringStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClubFilteringStateInitial implements _ClubFilteringStateInitial {
  const _$_ClubFilteringStateInitial();

  @override
  String toString() {
    return 'ClubFilteringState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
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
    required TResult Function(_ClubFilteringStateInitial value) initial,
    required TResult Function(_ClubFilteringStateLoaded value) loaded,
    required TResult Function(_ClubFilteringStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringStateInitial value)? initial,
    TResult? Function(_ClubFilteringStateLoaded value)? loaded,
    TResult? Function(_ClubFilteringStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringStateInitial value)? initial,
    TResult Function(_ClubFilteringStateLoaded value)? loaded,
    TResult Function(_ClubFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringStateInitial implements ClubFilteringState {
  const factory _ClubFilteringStateInitial() = _$_ClubFilteringStateInitial;
}

/// @nodoc
abstract class _$$_ClubFilteringStateLoadedCopyWith<$Res> {
  factory _$$_ClubFilteringStateLoadedCopyWith(
          _$_ClubFilteringStateLoaded value,
          $Res Function(_$_ClubFilteringStateLoaded) then) =
      __$$_ClubFilteringStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ClubFilters clubFilters, bool isPriceUpdated, bool isFacilitiesUpdated});

  $ClubFiltersCopyWith<$Res> get clubFilters;
}

/// @nodoc
class __$$_ClubFilteringStateLoadedCopyWithImpl<$Res>
    extends _$ClubFilteringStateCopyWithImpl<$Res, _$_ClubFilteringStateLoaded>
    implements _$$_ClubFilteringStateLoadedCopyWith<$Res> {
  __$$_ClubFilteringStateLoadedCopyWithImpl(_$_ClubFilteringStateLoaded _value,
      $Res Function(_$_ClubFilteringStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubFilters = null,
    Object? isPriceUpdated = null,
    Object? isFacilitiesUpdated = null,
  }) {
    return _then(_$_ClubFilteringStateLoaded(
      clubFilters: null == clubFilters
          ? _value.clubFilters
          : clubFilters // ignore: cast_nullable_to_non_nullable
              as ClubFilters,
      isPriceUpdated: null == isPriceUpdated
          ? _value.isPriceUpdated
          : isPriceUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacilitiesUpdated: null == isFacilitiesUpdated
          ? _value.isFacilitiesUpdated
          : isFacilitiesUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClubFiltersCopyWith<$Res> get clubFilters {
    return $ClubFiltersCopyWith<$Res>(_value.clubFilters, (value) {
      return _then(_value.copyWith(clubFilters: value));
    });
  }
}

/// @nodoc

class _$_ClubFilteringStateLoaded implements _ClubFilteringStateLoaded {
  const _$_ClubFilteringStateLoaded(
      {required this.clubFilters,
      this.isPriceUpdated = false,
      this.isFacilitiesUpdated = false});

  @override
  final ClubFilters clubFilters;
  @override
  @JsonKey()
  final bool isPriceUpdated;
  @override
  @JsonKey()
  final bool isFacilitiesUpdated;

  @override
  String toString() {
    return 'ClubFilteringState.loaded(clubFilters: $clubFilters, isPriceUpdated: $isPriceUpdated, isFacilitiesUpdated: $isFacilitiesUpdated)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilteringStateLoadedCopyWith<_$_ClubFilteringStateLoaded>
      get copyWith => __$$_ClubFilteringStateLoadedCopyWithImpl<
          _$_ClubFilteringStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(clubFilters, isPriceUpdated, isFacilitiesUpdated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(clubFilters, isPriceUpdated, isFacilitiesUpdated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(clubFilters, isPriceUpdated, isFacilitiesUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFilteringStateInitial value) initial,
    required TResult Function(_ClubFilteringStateLoaded value) loaded,
    required TResult Function(_ClubFilteringStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringStateInitial value)? initial,
    TResult? Function(_ClubFilteringStateLoaded value)? loaded,
    TResult? Function(_ClubFilteringStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringStateInitial value)? initial,
    TResult Function(_ClubFilteringStateLoaded value)? loaded,
    TResult Function(_ClubFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringStateLoaded implements ClubFilteringState {
  const factory _ClubFilteringStateLoaded(
      {required final ClubFilters clubFilters,
      final bool isPriceUpdated,
      final bool isFacilitiesUpdated}) = _$_ClubFilteringStateLoaded;

  ClubFilters get clubFilters;
  bool get isPriceUpdated;
  bool get isFacilitiesUpdated;
  @JsonKey(ignore: true)
  _$$_ClubFilteringStateLoadedCopyWith<_$_ClubFilteringStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClubFilteringStateErrorCopyWith<$Res> {
  factory _$$_ClubFilteringStateErrorCopyWith(_$_ClubFilteringStateError value,
          $Res Function(_$_ClubFilteringStateError) then) =
      __$$_ClubFilteringStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ClubFilteringStateErrorCopyWithImpl<$Res>
    extends _$ClubFilteringStateCopyWithImpl<$Res, _$_ClubFilteringStateError>
    implements _$$_ClubFilteringStateErrorCopyWith<$Res> {
  __$$_ClubFilteringStateErrorCopyWithImpl(_$_ClubFilteringStateError _value,
      $Res Function(_$_ClubFilteringStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ClubFilteringStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClubFilteringStateError implements _ClubFilteringStateError {
  const _$_ClubFilteringStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ClubFilteringState.error(error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFilteringStateErrorCopyWith<_$_ClubFilteringStateError>
      get copyWith =>
          __$$_ClubFilteringStateErrorCopyWithImpl<_$_ClubFilteringStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilters clubFilters, bool isPriceUpdated,
            bool isFacilitiesUpdated)?
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
    required TResult Function(_ClubFilteringStateInitial value) initial,
    required TResult Function(_ClubFilteringStateLoaded value) loaded,
    required TResult Function(_ClubFilteringStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClubFilteringStateInitial value)? initial,
    TResult? Function(_ClubFilteringStateLoaded value)? loaded,
    TResult? Function(_ClubFilteringStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFilteringStateInitial value)? initial,
    TResult Function(_ClubFilteringStateLoaded value)? loaded,
    TResult Function(_ClubFilteringStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ClubFilteringStateError implements ClubFilteringState {
  const factory _ClubFilteringStateError({required final String error}) =
      _$_ClubFilteringStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ClubFilteringStateErrorCopyWith<_$_ClubFilteringStateError>
      get copyWith => throw _privateConstructorUsedError;
}
