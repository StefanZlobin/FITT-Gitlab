// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contacts _$ContactsFromJson(Map<String, dynamic> json) {
  return _Contacts.fromJson(json);
}

/// @nodoc
mixin _$Contacts {
  @JsonKey(name: 'owner_str')
  String get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_numbers')
  List<PhoneNumber> get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'emails')
  List<Email> get emails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsCopyWith<Contacts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsCopyWith<$Res> {
  factory $ContactsCopyWith(Contacts value, $Res Function(Contacts) then) = _$ContactsCopyWithImpl<$Res, Contacts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_str') String owner,
      @JsonKey(name: 'phone_numbers') List<PhoneNumber> phoneNumbers,
      @JsonKey(name: 'emails') List<Email> emails});
}

/// @nodoc
class _$ContactsCopyWithImpl<$Res, $Val extends Contacts> implements $ContactsCopyWith<$Res> {
  _$ContactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? phoneNumbers = null,
    Object? emails = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: null == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumber>,
      emails: null == emails
          ? _value.emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<Email>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsCopyWith<$Res> implements $ContactsCopyWith<$Res> {
  factory _$$_ContactsCopyWith(_$_Contacts value, $Res Function(_$_Contacts) then) = __$$_ContactsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_str') String owner,
      @JsonKey(name: 'phone_numbers') List<PhoneNumber> phoneNumbers,
      @JsonKey(name: 'emails') List<Email> emails});
}

/// @nodoc
class __$$_ContactsCopyWithImpl<$Res> extends _$ContactsCopyWithImpl<$Res, _$_Contacts>
    implements _$$_ContactsCopyWith<$Res> {
  __$$_ContactsCopyWithImpl(_$_Contacts _value, $Res Function(_$_Contacts) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? phoneNumbers = null,
    Object? emails = null,
  }) {
    return _then(_$_Contacts(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: null == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<PhoneNumber>,
      emails: null == emails
          ? _value._emails
          : emails // ignore: cast_nullable_to_non_nullable
              as List<Email>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contacts extends _Contacts {
  _$_Contacts(
      {@JsonKey(name: 'owner_str') required this.owner,
      @JsonKey(name: 'phone_numbers') required final List<PhoneNumber> phoneNumbers,
      @JsonKey(name: 'emails') required final List<Email> emails})
      : _phoneNumbers = phoneNumbers,
        _emails = emails,
        super._();

  factory _$_Contacts.fromJson(Map<String, dynamic> json) => _$$_ContactsFromJson(json);

  @override
  @JsonKey(name: 'owner_str')
  final String owner;
  final List<PhoneNumber> _phoneNumbers;
  @override
  @JsonKey(name: 'phone_numbers')
  List<PhoneNumber> get phoneNumbers {
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phoneNumbers);
  }

  final List<Email> _emails;
  @override
  @JsonKey(name: 'emails')
  List<Email> get emails {
    if (_emails is EqualUnmodifiableListView) return _emails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emails);
  }

  @override
  String toString() {
    return 'Contacts(owner: $owner, phoneNumbers: $phoneNumbers, emails: $emails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contacts &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._phoneNumbers, _phoneNumbers) &&
            const DeepCollectionEquality().equals(other._emails, _emails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, owner, const DeepCollectionEquality().hash(_phoneNumbers),
      const DeepCollectionEquality().hash(_emails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsCopyWith<_$_Contacts> get copyWith => __$$_ContactsCopyWithImpl<_$_Contacts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsToJson(
      this,
    );
  }
}

abstract class _Contacts extends Contacts {
  factory _Contacts(
      {@JsonKey(name: 'owner_str') required final String owner,
      @JsonKey(name: 'phone_numbers') required final List<PhoneNumber> phoneNumbers,
      @JsonKey(name: 'emails') required final List<Email> emails}) = _$_Contacts;
  _Contacts._() : super._();

  factory _Contacts.fromJson(Map<String, dynamic> json) = _$_Contacts.fromJson;

  @override
  @JsonKey(name: 'owner_str')
  String get owner;
  @override
  @JsonKey(name: 'phone_numbers')
  List<PhoneNumber> get phoneNumbers;
  @override
  @JsonKey(name: 'emails')
  List<Email> get emails;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsCopyWith<_$_Contacts> get copyWith => throw _privateConstructorUsedError;
}
