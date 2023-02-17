// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  @JsonKey(name: 'label')
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'inn')
  String get inn => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacts')
  List<Contacts> get contacts => throw _privateConstructorUsedError;
  @JsonKey(name: 'corporate_email')
  String get corporateEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'ogrn')
  String get ogrn => throw _privateConstructorUsedError;
  @JsonKey(name: 'official_label')
  String get officalLabel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'inn') String inn,
      @JsonKey(name: 'contacts') List<Contacts> contacts,
      @JsonKey(name: 'corporate_email') String corporateEmail,
      @JsonKey(name: 'ogrn') String ogrn,
      @JsonKey(name: 'official_label') String officalLabel});
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? inn = null,
    Object? contacts = null,
    Object? corporateEmail = null,
    Object? ogrn = null,
    Object? officalLabel = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contacts>,
      corporateEmail: null == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      officalLabel: null == officalLabel
          ? _value.officalLabel
          : officalLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrganizationCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$_OrganizationCopyWith(
          _$_Organization value, $Res Function(_$_Organization) then) =
      __$$_OrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'label') String label,
      @JsonKey(name: 'inn') String inn,
      @JsonKey(name: 'contacts') List<Contacts> contacts,
      @JsonKey(name: 'corporate_email') String corporateEmail,
      @JsonKey(name: 'ogrn') String ogrn,
      @JsonKey(name: 'official_label') String officalLabel});
}

/// @nodoc
class __$$_OrganizationCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$_Organization>
    implements _$$_OrganizationCopyWith<$Res> {
  __$$_OrganizationCopyWithImpl(
      _$_Organization _value, $Res Function(_$_Organization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? inn = null,
    Object? contacts = null,
    Object? corporateEmail = null,
    Object? ogrn = null,
    Object? officalLabel = null,
  }) {
    return _then(_$_Organization(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contacts>,
      corporateEmail: null == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      officalLabel: null == officalLabel
          ? _value.officalLabel
          : officalLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Organization implements _Organization {
  _$_Organization(
      {@JsonKey(name: 'label') required this.label,
      @JsonKey(name: 'inn') required this.inn,
      @JsonKey(name: 'contacts') required final List<Contacts> contacts,
      @JsonKey(name: 'corporate_email') required this.corporateEmail,
      @JsonKey(name: 'ogrn') required this.ogrn,
      @JsonKey(name: 'official_label') required this.officalLabel})
      : _contacts = contacts;

  factory _$_Organization.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizationFromJson(json);

  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'inn')
  final String inn;
  final List<Contacts> _contacts;
  @override
  @JsonKey(name: 'contacts')
  List<Contacts> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  @JsonKey(name: 'corporate_email')
  final String corporateEmail;
  @override
  @JsonKey(name: 'ogrn')
  final String ogrn;
  @override
  @JsonKey(name: 'official_label')
  final String officalLabel;

  @override
  String toString() {
    return 'Organization(label: $label, inn: $inn, contacts: $contacts, corporateEmail: $corporateEmail, ogrn: $ogrn, officalLabel: $officalLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Organization &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.ogrn, ogrn) || other.ogrn == ogrn) &&
            (identical(other.officalLabel, officalLabel) ||
                other.officalLabel == officalLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      label,
      inn,
      const DeepCollectionEquality().hash(_contacts),
      corporateEmail,
      ogrn,
      officalLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      __$$_OrganizationCopyWithImpl<_$_Organization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizationToJson(
      this,
    );
  }
}

abstract class _Organization implements Organization {
  factory _Organization(
      {@JsonKey(name: 'label')
          required final String label,
      @JsonKey(name: 'inn')
          required final String inn,
      @JsonKey(name: 'contacts')
          required final List<Contacts> contacts,
      @JsonKey(name: 'corporate_email')
          required final String corporateEmail,
      @JsonKey(name: 'ogrn')
          required final String ogrn,
      @JsonKey(name: 'official_label')
          required final String officalLabel}) = _$_Organization;

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$_Organization.fromJson;

  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(name: 'inn')
  String get inn;
  @override
  @JsonKey(name: 'contacts')
  List<Contacts> get contacts;
  @override
  @JsonKey(name: 'corporate_email')
  String get corporateEmail;
  @override
  @JsonKey(name: 'ogrn')
  String get ogrn;
  @override
  @JsonKey(name: 'official_label')
  String get officalLabel;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      throw _privateConstructorUsedError;
}
