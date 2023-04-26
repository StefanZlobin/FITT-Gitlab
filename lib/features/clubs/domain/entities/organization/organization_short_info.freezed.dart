// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_short_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrganizationShortInfo _$OrganizationShortInfoFromJson(
    Map<String, dynamic> json) {
  return _OrganizationShortInfo.fromJson(json);
}

/// @nodoc
mixin _$OrganizationShortInfo {
  @JsonKey(name: 'id')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationShortInfoCopyWith<OrganizationShortInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationShortInfoCopyWith<$Res> {
  factory $OrganizationShortInfoCopyWith(OrganizationShortInfo value,
          $Res Function(OrganizationShortInfo) then) =
      _$OrganizationShortInfoCopyWithImpl<$Res, OrganizationShortInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid, @JsonKey(name: 'label') String label});
}

/// @nodoc
class _$OrganizationShortInfoCopyWithImpl<$Res,
        $Val extends OrganizationShortInfo>
    implements $OrganizationShortInfoCopyWith<$Res> {
  _$OrganizationShortInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizationShortInfoCopyWith<$Res>
    implements $OrganizationShortInfoCopyWith<$Res> {
  factory _$$_OrganizationShortInfoCopyWith(_$_OrganizationShortInfo value,
          $Res Function(_$_OrganizationShortInfo) then) =
      __$$_OrganizationShortInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String uuid, @JsonKey(name: 'label') String label});
}

/// @nodoc
class __$$_OrganizationShortInfoCopyWithImpl<$Res>
    extends _$OrganizationShortInfoCopyWithImpl<$Res, _$_OrganizationShortInfo>
    implements _$$_OrganizationShortInfoCopyWith<$Res> {
  __$$_OrganizationShortInfoCopyWithImpl(_$_OrganizationShortInfo _value,
      $Res Function(_$_OrganizationShortInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? label = null,
  }) {
    return _then(_$_OrganizationShortInfo(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrganizationShortInfo implements _OrganizationShortInfo {
  _$_OrganizationShortInfo(
      {@JsonKey(name: 'id') required this.uuid,
      @JsonKey(name: 'label') required this.label});

  factory _$_OrganizationShortInfo.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizationShortInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String uuid;
  @override
  @JsonKey(name: 'label')
  final String label;

  @override
  String toString() {
    return 'OrganizationShortInfo(uuid: $uuid, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrganizationShortInfo &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationShortInfoCopyWith<_$_OrganizationShortInfo> get copyWith =>
      __$$_OrganizationShortInfoCopyWithImpl<_$_OrganizationShortInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizationShortInfoToJson(
      this,
    );
  }
}

abstract class _OrganizationShortInfo implements OrganizationShortInfo {
  factory _OrganizationShortInfo(
          {@JsonKey(name: 'id') required final String uuid,
          @JsonKey(name: 'label') required final String label}) =
      _$_OrganizationShortInfo;

  factory _OrganizationShortInfo.fromJson(Map<String, dynamic> json) =
      _$_OrganizationShortInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get uuid;
  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizationShortInfoCopyWith<_$_OrganizationShortInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
