// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_club.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminClub _$AdminClubFromJson(Map<String, dynamic> json) {
  return _AdminClub.fromJson(json);
}

/// @nodoc
mixin _$AdminClub {
  @JsonKey(name: 'id')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'permission_type')
  String? get permissionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'analyze_info')
  AnalyzeInfo? get analyzeInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
  DateTime? get modified => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'dependencies')
  String get dependencies => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization')
  String get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'facilities')
  List<int>? get facilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminClubCopyWith<AdminClub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminClubCopyWith<$Res> {
  factory $AdminClubCopyWith(AdminClub value, $Res Function(AdminClub) then) =
      _$AdminClubCopyWithImpl<$Res, AdminClub>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? uuid,
      @JsonKey(name: 'permission_type')
          String? permissionType,
      @JsonKey(name: 'analyze_info')
          AnalyzeInfo? analyzeInfo,
      @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
          DateTime? created,
      @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
          DateTime? modified,
      @JsonKey(name: 'timezone')
          String? timezone,
      @JsonKey(name: 'label')
          String label,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'rating')
          double? rating,
      @JsonKey(name: 'dependencies')
          String dependencies,
      @JsonKey(name: 'status')
          String status,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'organization')
          String organization,
      @JsonKey(name: 'address')
          String? address,
      @JsonKey(name: 'facilities')
          List<int>? facilities});

  $AnalyzeInfoCopyWith<$Res>? get analyzeInfo;
}

/// @nodoc
class _$AdminClubCopyWithImpl<$Res, $Val extends AdminClub>
    implements $AdminClubCopyWith<$Res> {
  _$AdminClubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? permissionType = freezed,
    Object? analyzeInfo = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? timezone = freezed,
    Object? label = null,
    Object? description = null,
    Object? rating = freezed,
    Object? dependencies = null,
    Object? status = null,
    Object? email = freezed,
    Object? phone = null,
    Object? organization = null,
    Object? address = freezed,
    Object? facilities = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionType: freezed == permissionType
          ? _value.permissionType
          : permissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzeInfo: freezed == analyzeInfo
          ? _value.analyzeInfo
          : analyzeInfo // ignore: cast_nullable_to_non_nullable
              as AnalyzeInfo?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyzeInfoCopyWith<$Res>? get analyzeInfo {
    if (_value.analyzeInfo == null) {
      return null;
    }

    return $AnalyzeInfoCopyWith<$Res>(_value.analyzeInfo!, (value) {
      return _then(_value.copyWith(analyzeInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AdminClubCopyWith<$Res> implements $AdminClubCopyWith<$Res> {
  factory _$$_AdminClubCopyWith(
          _$_AdminClub value, $Res Function(_$_AdminClub) then) =
      __$$_AdminClubCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? uuid,
      @JsonKey(name: 'permission_type')
          String? permissionType,
      @JsonKey(name: 'analyze_info')
          AnalyzeInfo? analyzeInfo,
      @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
          DateTime? created,
      @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
          DateTime? modified,
      @JsonKey(name: 'timezone')
          String? timezone,
      @JsonKey(name: 'label')
          String label,
      @JsonKey(name: 'description')
          String description,
      @JsonKey(name: 'rating')
          double? rating,
      @JsonKey(name: 'dependencies')
          String dependencies,
      @JsonKey(name: 'status')
          String status,
      @JsonKey(name: 'email')
          String? email,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'organization')
          String organization,
      @JsonKey(name: 'address')
          String? address,
      @JsonKey(name: 'facilities')
          List<int>? facilities});

  @override
  $AnalyzeInfoCopyWith<$Res>? get analyzeInfo;
}

/// @nodoc
class __$$_AdminClubCopyWithImpl<$Res>
    extends _$AdminClubCopyWithImpl<$Res, _$_AdminClub>
    implements _$$_AdminClubCopyWith<$Res> {
  __$$_AdminClubCopyWithImpl(
      _$_AdminClub _value, $Res Function(_$_AdminClub) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? permissionType = freezed,
    Object? analyzeInfo = freezed,
    Object? created = freezed,
    Object? modified = freezed,
    Object? timezone = freezed,
    Object? label = null,
    Object? description = null,
    Object? rating = freezed,
    Object? dependencies = null,
    Object? status = null,
    Object? email = freezed,
    Object? phone = null,
    Object? organization = null,
    Object? address = freezed,
    Object? facilities = freezed,
  }) {
    return _then(_$_AdminClub(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      permissionType: freezed == permissionType
          ? _value.permissionType
          : permissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      analyzeInfo: freezed == analyzeInfo
          ? _value.analyzeInfo
          : analyzeInfo // ignore: cast_nullable_to_non_nullable
              as AnalyzeInfo?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminClub implements _AdminClub {
  const _$_AdminClub(
      {@JsonKey(name: 'id')
          this.uuid,
      @JsonKey(name: 'permission_type')
          this.permissionType,
      @JsonKey(name: 'analyze_info')
          this.analyzeInfo,
      @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
          this.created,
      @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
          this.modified,
      @JsonKey(name: 'timezone')
          this.timezone,
      @JsonKey(name: 'label')
          required this.label,
      @JsonKey(name: 'description')
          required this.description,
      @JsonKey(name: 'rating')
          this.rating,
      @JsonKey(name: 'dependencies')
          required this.dependencies,
      @JsonKey(name: 'status')
          required this.status,
      @JsonKey(name: 'email')
          this.email,
      @JsonKey(name: 'phone')
          required this.phone,
      @JsonKey(name: 'organization')
          required this.organization,
      @JsonKey(name: 'address')
          this.address,
      @JsonKey(name: 'facilities')
          final List<int>? facilities})
      : _facilities = facilities;

  factory _$_AdminClub.fromJson(Map<String, dynamic> json) =>
      _$$_AdminClubFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? uuid;
  @override
  @JsonKey(name: 'permission_type')
  final String? permissionType;
  @override
  @JsonKey(name: 'analyze_info')
  final AnalyzeInfo? analyzeInfo;
  @override
  @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
  final DateTime? created;
  @override
  @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
  final DateTime? modified;
  @override
  @JsonKey(name: 'timezone')
  final String? timezone;
  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'dependencies')
  final String dependencies;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'organization')
  final String organization;
  @override
  @JsonKey(name: 'address')
  final String? address;
  final List<int>? _facilities;
  @override
  @JsonKey(name: 'facilities')
  List<int>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AdminClub(uuid: $uuid, permissionType: $permissionType, analyzeInfo: $analyzeInfo, created: $created, modified: $modified, timezone: $timezone, label: $label, description: $description, rating: $rating, dependencies: $dependencies, status: $status, email: $email, phone: $phone, organization: $organization, address: $address, facilities: $facilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminClub &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.permissionType, permissionType) ||
                other.permissionType == permissionType) &&
            (identical(other.analyzeInfo, analyzeInfo) ||
                other.analyzeInfo == analyzeInfo) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.dependencies, dependencies) ||
                other.dependencies == dependencies) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      permissionType,
      analyzeInfo,
      created,
      modified,
      timezone,
      label,
      description,
      rating,
      dependencies,
      status,
      email,
      phone,
      organization,
      address,
      const DeepCollectionEquality().hash(_facilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminClubCopyWith<_$_AdminClub> get copyWith =>
      __$$_AdminClubCopyWithImpl<_$_AdminClub>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminClubToJson(
      this,
    );
  }
}

abstract class _AdminClub implements AdminClub {
  const factory _AdminClub(
      {@JsonKey(name: 'id')
          final String? uuid,
      @JsonKey(name: 'permission_type')
          final String? permissionType,
      @JsonKey(name: 'analyze_info')
          final AnalyzeInfo? analyzeInfo,
      @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
          final DateTime? created,
      @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
          final DateTime? modified,
      @JsonKey(name: 'timezone')
          final String? timezone,
      @JsonKey(name: 'label')
          required final String label,
      @JsonKey(name: 'description')
          required final String description,
      @JsonKey(name: 'rating')
          final double? rating,
      @JsonKey(name: 'dependencies')
          required final String dependencies,
      @JsonKey(name: 'status')
          required final String status,
      @JsonKey(name: 'email')
          final String? email,
      @JsonKey(name: 'phone')
          required final String phone,
      @JsonKey(name: 'organization')
          required final String organization,
      @JsonKey(name: 'address')
          final String? address,
      @JsonKey(name: 'facilities')
          final List<int>? facilities}) = _$_AdminClub;

  factory _AdminClub.fromJson(Map<String, dynamic> json) =
      _$_AdminClub.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get uuid;
  @override
  @JsonKey(name: 'permission_type')
  String? get permissionType;
  @override
  @JsonKey(name: 'analyze_info')
  AnalyzeInfo? get analyzeInfo;
  @override
  @JsonKey(name: 'created', fromJson: dateTimeFromStringNullable)
  DateTime? get created;
  @override
  @JsonKey(name: 'modified', fromJson: dateTimeFromStringNullable)
  DateTime? get modified;
  @override
  @JsonKey(name: 'timezone')
  String? get timezone;
  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'dependencies')
  String get dependencies;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'organization')
  String get organization;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'facilities')
  List<int>? get facilities;
  @override
  @JsonKey(ignore: true)
  _$$_AdminClubCopyWith<_$_AdminClub> get copyWith =>
      throw _privateConstructorUsedError;
}
