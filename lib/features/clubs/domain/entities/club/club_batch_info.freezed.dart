// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_batch_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubBatchInfo _$ClubBatchInfoFromJson(Map<String, dynamic> json) {
  return _ClubBatchInfo.fromJson(json);
}

/// @nodoc
mixin _$ClubBatchInfo {
  @JsonKey(name: 'id')
  String get clubUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String get clubLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  Address get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  List<Photo> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubBatchInfoCopyWith<ClubBatchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubBatchInfoCopyWith<$Res> {
  factory $ClubBatchInfoCopyWith(
          ClubBatchInfo value, $Res Function(ClubBatchInfo) then) =
      _$ClubBatchInfoCopyWithImpl<$Res, ClubBatchInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String clubUuid,
      @JsonKey(name: 'label') String clubLabel,
      @JsonKey(name: 'address') Address address,
      @JsonKey(name: 'photos') List<Photo> photos});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ClubBatchInfoCopyWithImpl<$Res, $Val extends ClubBatchInfo>
    implements $ClubBatchInfoCopyWith<$Res> {
  _$ClubBatchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubUuid = null,
    Object? clubLabel = null,
    Object? address = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      clubUuid: null == clubUuid
          ? _value.clubUuid
          : clubUuid // ignore: cast_nullable_to_non_nullable
              as String,
      clubLabel: null == clubLabel
          ? _value.clubLabel
          : clubLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClubBatchInfoCopyWith<$Res>
    implements $ClubBatchInfoCopyWith<$Res> {
  factory _$$_ClubBatchInfoCopyWith(
          _$_ClubBatchInfo value, $Res Function(_$_ClubBatchInfo) then) =
      __$$_ClubBatchInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String clubUuid,
      @JsonKey(name: 'label') String clubLabel,
      @JsonKey(name: 'address') Address address,
      @JsonKey(name: 'photos') List<Photo> photos});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_ClubBatchInfoCopyWithImpl<$Res>
    extends _$ClubBatchInfoCopyWithImpl<$Res, _$_ClubBatchInfo>
    implements _$$_ClubBatchInfoCopyWith<$Res> {
  __$$_ClubBatchInfoCopyWithImpl(
      _$_ClubBatchInfo _value, $Res Function(_$_ClubBatchInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clubUuid = null,
    Object? clubLabel = null,
    Object? address = null,
    Object? photos = null,
  }) {
    return _then(_$_ClubBatchInfo(
      clubUuid: null == clubUuid
          ? _value.clubUuid
          : clubUuid // ignore: cast_nullable_to_non_nullable
              as String,
      clubLabel: null == clubLabel
          ? _value.clubLabel
          : clubLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubBatchInfo extends _ClubBatchInfo {
  _$_ClubBatchInfo(
      {@JsonKey(name: 'id') required this.clubUuid,
      @JsonKey(name: 'label') required this.clubLabel,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'photos') required final List<Photo> photos})
      : _photos = photos,
        super._();

  factory _$_ClubBatchInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ClubBatchInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String clubUuid;
  @override
  @JsonKey(name: 'label')
  final String clubLabel;
  @override
  @JsonKey(name: 'address')
  final Address address;
  final List<Photo> _photos;
  @override
  @JsonKey(name: 'photos')
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'ClubBatchInfo(clubUuid: $clubUuid, clubLabel: $clubLabel, address: $address, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubBatchInfo &&
            (identical(other.clubUuid, clubUuid) ||
                other.clubUuid == clubUuid) &&
            (identical(other.clubLabel, clubLabel) ||
                other.clubLabel == clubLabel) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clubUuid, clubLabel, address,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubBatchInfoCopyWith<_$_ClubBatchInfo> get copyWith =>
      __$$_ClubBatchInfoCopyWithImpl<_$_ClubBatchInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubBatchInfoToJson(
      this,
    );
  }
}

abstract class _ClubBatchInfo extends ClubBatchInfo {
  factory _ClubBatchInfo(
          {@JsonKey(name: 'id') required final String clubUuid,
          @JsonKey(name: 'label') required final String clubLabel,
          @JsonKey(name: 'address') required final Address address,
          @JsonKey(name: 'photos') required final List<Photo> photos}) =
      _$_ClubBatchInfo;
  _ClubBatchInfo._() : super._();

  factory _ClubBatchInfo.fromJson(Map<String, dynamic> json) =
      _$_ClubBatchInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get clubUuid;
  @override
  @JsonKey(name: 'label')
  String get clubLabel;
  @override
  @JsonKey(name: 'address')
  Address get address;
  @override
  @JsonKey(name: 'photos')
  List<Photo> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_ClubBatchInfoCopyWith<_$_ClubBatchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
