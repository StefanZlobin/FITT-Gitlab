// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserOrganization _$UserOrganizationFromJson(Map<String, dynamic> json) {
  return _UserOrganization.fromJson(json);
}

/// @nodoc
mixin _$UserOrganization {
// Наименование организации, в которой юзер состоит
  @JsonKey(name: 'label')
  String get label =>
      throw _privateConstructorUsedError; // Описание организации
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  String get organizationInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOrganizationCopyWith<UserOrganization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrganizationCopyWith<$Res> {
  factory $UserOrganizationCopyWith(
          UserOrganization value, $Res Function(UserOrganization) then) =
      _$UserOrganizationCopyWithImpl<$Res, UserOrganization>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'description') String description,
      String organizationInfo});
}

/// @nodoc
class _$UserOrganizationCopyWithImpl<$Res, $Val extends UserOrganization>
    implements $UserOrganizationCopyWith<$Res> {
  _$UserOrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? description = null,
    Object? organizationInfo = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      organizationInfo: null == organizationInfo
          ? _value.organizationInfo
          : organizationInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserOrganizationCopyWith<$Res>
    implements $UserOrganizationCopyWith<$Res> {
  factory _$$_UserOrganizationCopyWith(
          _$_UserOrganization value, $Res Function(_$_UserOrganization) then) =
      __$$_UserOrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'description') String description,
      String organizationInfo});
}

/// @nodoc
class __$$_UserOrganizationCopyWithImpl<$Res>
    extends _$UserOrganizationCopyWithImpl<$Res, _$_UserOrganization>
    implements _$$_UserOrganizationCopyWith<$Res> {
  __$$_UserOrganizationCopyWithImpl(
      _$_UserOrganization _value, $Res Function(_$_UserOrganization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? description = null,
    Object? organizationInfo = null,
  }) {
    return _then(_$_UserOrganization(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      organizationInfo: null == organizationInfo
          ? _value.organizationInfo
          : organizationInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserOrganization extends _UserOrganization {
  _$_UserOrganization(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'description') required this.description,
      required this.organizationInfo})
      : super._();

  factory _$_UserOrganization.fromJson(Map<String, dynamic> json) =>
      _$$_UserOrganizationFromJson(json);

// Наименование организации, в которой юзер состоит
  @override
  @JsonKey(name: 'label')
  final String label;
// Описание организации
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  final String organizationInfo;

  @override
  String toString() {
    return 'UserOrganization(label: $label, description: $description, organizationInfo: $organizationInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserOrganization &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.organizationInfo, organizationInfo) ||
                other.organizationInfo == organizationInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, description, organizationInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserOrganizationCopyWith<_$_UserOrganization> get copyWith =>
      __$$_UserOrganizationCopyWithImpl<_$_UserOrganization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserOrganizationToJson(
      this,
    );
  }
}

abstract class _UserOrganization extends UserOrganization {
  factory _UserOrganization(
      {@JsonKey(name: 'label') required final String label,
      @JsonKey(name: 'description') required final String description,
      required final String organizationInfo}) = _$_UserOrganization;
  _UserOrganization._() : super._();

  factory _UserOrganization.fromJson(Map<String, dynamic> json) =
      _$_UserOrganization.fromJson;

  @override // Наименование организации, в которой юзер состоит
  @JsonKey(name: 'label')
  String get label;
  @override // Описание организации
  @JsonKey(name: 'description')
  String get description;
  @override
  String get organizationInfo;
  @override
  @JsonKey(ignore: true)
  _$$_UserOrganizationCopyWith<_$_UserOrganization> get copyWith =>
      throw _privateConstructorUsedError;
}
