// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubFilters _$ClubFiltersFromJson(Map<String, dynamic> json) {
  return _ClubFilters.fromJson(json);
}

/// @nodoc
mixin _$ClubFilters {
//TODO: при фильтрации передавать только facility id
  @JsonKey(name: 'facility_ids')
  List<Facility>? get facilities => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_gte')
  int? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_lte')
  int? get maxPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'only_with_batch')
  bool? get onlyWithBatch => throw _privateConstructorUsedError;
  @JsonKey(name: 'only_with_slots')
  bool? get onlyWithSlots => throw _privateConstructorUsedError;
  @JsonKey(name: 'only_favorite')
  bool? get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubFiltersCopyWith<ClubFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersCopyWith<$Res> {
  factory $ClubFiltersCopyWith(
          ClubFilters value, $Res Function(ClubFilters) then) =
      _$ClubFiltersCopyWithImpl<$Res, ClubFilters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'facility_ids') List<Facility>? facilities,
      @JsonKey(name: 'price_gte') int? minPrice,
      @JsonKey(name: 'price_lte') int? maxPrice,
      @JsonKey(name: 'only_with_batch') bool? onlyWithBatch,
      @JsonKey(name: 'only_with_slots') bool? onlyWithSlots,
      @JsonKey(name: 'only_favorite') bool? favorite});
}

/// @nodoc
class _$ClubFiltersCopyWithImpl<$Res, $Val extends ClubFilters>
    implements $ClubFiltersCopyWith<$Res> {
  _$ClubFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? onlyWithBatch = freezed,
    Object? onlyWithSlots = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyWithBatch: freezed == onlyWithBatch
          ? _value.onlyWithBatch
          : onlyWithBatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyWithSlots: freezed == onlyWithSlots
          ? _value.onlyWithSlots
          : onlyWithSlots // ignore: cast_nullable_to_non_nullable
              as bool?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubFiltersCopyWith<$Res>
    implements $ClubFiltersCopyWith<$Res> {
  factory _$$_ClubFiltersCopyWith(
          _$_ClubFilters value, $Res Function(_$_ClubFilters) then) =
      __$$_ClubFiltersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'facility_ids') List<Facility>? facilities,
      @JsonKey(name: 'price_gte') int? minPrice,
      @JsonKey(name: 'price_lte') int? maxPrice,
      @JsonKey(name: 'only_with_batch') bool? onlyWithBatch,
      @JsonKey(name: 'only_with_slots') bool? onlyWithSlots,
      @JsonKey(name: 'only_favorite') bool? favorite});
}

/// @nodoc
class __$$_ClubFiltersCopyWithImpl<$Res>
    extends _$ClubFiltersCopyWithImpl<$Res, _$_ClubFilters>
    implements _$$_ClubFiltersCopyWith<$Res> {
  __$$_ClubFiltersCopyWithImpl(
      _$_ClubFilters _value, $Res Function(_$_ClubFilters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? onlyWithBatch = freezed,
    Object? onlyWithSlots = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_$_ClubFilters(
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<Facility>?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      onlyWithBatch: freezed == onlyWithBatch
          ? _value.onlyWithBatch
          : onlyWithBatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      onlyWithSlots: freezed == onlyWithSlots
          ? _value.onlyWithSlots
          : onlyWithSlots // ignore: cast_nullable_to_non_nullable
              as bool?,
      favorite: freezed == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubFilters implements _ClubFilters {
  const _$_ClubFilters(
      {@JsonKey(name: 'facility_ids') final List<Facility>? facilities,
      @JsonKey(name: 'price_gte') this.minPrice,
      @JsonKey(name: 'price_lte') this.maxPrice,
      @JsonKey(name: 'only_with_batch') this.onlyWithBatch,
      @JsonKey(name: 'only_with_slots') this.onlyWithSlots,
      @JsonKey(name: 'only_favorite') this.favorite})
      : _facilities = facilities;

  factory _$_ClubFilters.fromJson(Map<String, dynamic> json) =>
      _$$_ClubFiltersFromJson(json);

//TODO: при фильтрации передавать только facility id
  final List<Facility>? _facilities;
//TODO: при фильтрации передавать только facility id
  @override
  @JsonKey(name: 'facility_ids')
  List<Facility>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'price_gte')
  final int? minPrice;
  @override
  @JsonKey(name: 'price_lte')
  final int? maxPrice;
  @override
  @JsonKey(name: 'only_with_batch')
  final bool? onlyWithBatch;
  @override
  @JsonKey(name: 'only_with_slots')
  final bool? onlyWithSlots;
  @override
  @JsonKey(name: 'only_favorite')
  final bool? favorite;

  @override
  String toString() {
    return 'ClubFilters(facilities: $facilities, minPrice: $minPrice, maxPrice: $maxPrice, onlyWithBatch: $onlyWithBatch, onlyWithSlots: $onlyWithSlots, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFilters &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.onlyWithBatch, onlyWithBatch) ||
                other.onlyWithBatch == onlyWithBatch) &&
            (identical(other.onlyWithSlots, onlyWithSlots) ||
                other.onlyWithSlots == onlyWithSlots) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_facilities),
      minPrice,
      maxPrice,
      onlyWithBatch,
      onlyWithSlots,
      favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFiltersCopyWith<_$_ClubFilters> get copyWith =>
      __$$_ClubFiltersCopyWithImpl<_$_ClubFilters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubFiltersToJson(
      this,
    );
  }
}

abstract class _ClubFilters implements ClubFilters {
  const factory _ClubFilters(
      {@JsonKey(name: 'facility_ids') final List<Facility>? facilities,
      @JsonKey(name: 'price_gte') final int? minPrice,
      @JsonKey(name: 'price_lte') final int? maxPrice,
      @JsonKey(name: 'only_with_batch') final bool? onlyWithBatch,
      @JsonKey(name: 'only_with_slots') final bool? onlyWithSlots,
      @JsonKey(name: 'only_favorite') final bool? favorite}) = _$_ClubFilters;

  factory _ClubFilters.fromJson(Map<String, dynamic> json) =
      _$_ClubFilters.fromJson;

  @override //TODO: при фильтрации передавать только facility id
  @JsonKey(name: 'facility_ids')
  List<Facility>? get facilities;
  @override
  @JsonKey(name: 'price_gte')
  int? get minPrice;
  @override
  @JsonKey(name: 'price_lte')
  int? get maxPrice;
  @override
  @JsonKey(name: 'only_with_batch')
  bool? get onlyWithBatch;
  @override
  @JsonKey(name: 'only_with_slots')
  bool? get onlyWithSlots;
  @override
  @JsonKey(name: 'only_favorite')
  bool? get favorite;
  @override
  @JsonKey(ignore: true)
  _$$_ClubFiltersCopyWith<_$_ClubFilters> get copyWith =>
      throw _privateConstructorUsedError;
}
