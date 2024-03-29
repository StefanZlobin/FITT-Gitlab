// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
// Текущий остаток на балансе в копейках
  @JsonKey(name: 'balance', fromJson: toRubles)
  int get balance =>
      throw _privateConstructorUsedError; // Лимит без вычета купленных тренировок
  @JsonKey(name: 'total_limit', fromJson: toRubles)
  int get totalLimit =>
      throw _privateConstructorUsedError; // Дата следующего попонения кошелька
  @JsonKey(
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
      name: 'next_replenishment')
  DateTime get nextReplenishment =>
      throw _privateConstructorUsedError; // Наименование организации, в которой юзер состоит
  @JsonKey(name: 'organization_label')
  String get organizationLabel =>
      throw _privateConstructorUsedError; // ИНН организации
  @JsonKey(name: 'organization_inn')
  String get organizationInn =>
      throw _privateConstructorUsedError; // Email организации
  @JsonKey(name: 'email')
  String get organizationEmail =>
      throw _privateConstructorUsedError; // Адресс организации
  @JsonKey(name: 'organization_address')
  String get organizationAddress =>
      throw _privateConstructorUsedError; // Телефон организации
  @JsonKey(name: 'phone')
  String get organizationPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'balance', fromJson: toRubles)
          int balance,
      @JsonKey(name: 'total_limit', fromJson: toRubles)
          int totalLimit,
      @JsonKey(fromJson: dateTimeFromString, toJson: dateTimeToString, name: 'next_replenishment')
          DateTime nextReplenishment,
      @JsonKey(name: 'organization_label')
          String organizationLabel,
      @JsonKey(name: 'organization_inn')
          String organizationInn,
      @JsonKey(name: 'email')
          String organizationEmail,
      @JsonKey(name: 'organization_address')
          String organizationAddress,
      @JsonKey(name: 'phone')
          String organizationPhone});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? totalLimit = null,
    Object? nextReplenishment = null,
    Object? organizationLabel = null,
    Object? organizationInn = null,
    Object? organizationEmail = null,
    Object? organizationAddress = null,
    Object? organizationPhone = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      totalLimit: null == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
              as int,
      nextReplenishment: null == nextReplenishment
          ? _value.nextReplenishment
          : nextReplenishment // ignore: cast_nullable_to_non_nullable
              as DateTime,
      organizationLabel: null == organizationLabel
          ? _value.organizationLabel
          : organizationLabel // ignore: cast_nullable_to_non_nullable
              as String,
      organizationInn: null == organizationInn
          ? _value.organizationInn
          : organizationInn // ignore: cast_nullable_to_non_nullable
              as String,
      organizationEmail: null == organizationEmail
          ? _value.organizationEmail
          : organizationEmail // ignore: cast_nullable_to_non_nullable
              as String,
      organizationAddress: null == organizationAddress
          ? _value.organizationAddress
          : organizationAddress // ignore: cast_nullable_to_non_nullable
              as String,
      organizationPhone: null == organizationPhone
          ? _value.organizationPhone
          : organizationPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$_WalletCopyWith(_$_Wallet value, $Res Function(_$_Wallet) then) =
      __$$_WalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'balance', fromJson: toRubles)
          int balance,
      @JsonKey(name: 'total_limit', fromJson: toRubles)
          int totalLimit,
      @JsonKey(fromJson: dateTimeFromString, toJson: dateTimeToString, name: 'next_replenishment')
          DateTime nextReplenishment,
      @JsonKey(name: 'organization_label')
          String organizationLabel,
      @JsonKey(name: 'organization_inn')
          String organizationInn,
      @JsonKey(name: 'email')
          String organizationEmail,
      @JsonKey(name: 'organization_address')
          String organizationAddress,
      @JsonKey(name: 'phone')
          String organizationPhone});
}

/// @nodoc
class __$$_WalletCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$_Wallet>
    implements _$$_WalletCopyWith<$Res> {
  __$$_WalletCopyWithImpl(_$_Wallet _value, $Res Function(_$_Wallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? totalLimit = null,
    Object? nextReplenishment = null,
    Object? organizationLabel = null,
    Object? organizationInn = null,
    Object? organizationEmail = null,
    Object? organizationAddress = null,
    Object? organizationPhone = null,
  }) {
    return _then(_$_Wallet(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      totalLimit: null == totalLimit
          ? _value.totalLimit
          : totalLimit // ignore: cast_nullable_to_non_nullable
              as int,
      nextReplenishment: null == nextReplenishment
          ? _value.nextReplenishment
          : nextReplenishment // ignore: cast_nullable_to_non_nullable
              as DateTime,
      organizationLabel: null == organizationLabel
          ? _value.organizationLabel
          : organizationLabel // ignore: cast_nullable_to_non_nullable
              as String,
      organizationInn: null == organizationInn
          ? _value.organizationInn
          : organizationInn // ignore: cast_nullable_to_non_nullable
              as String,
      organizationEmail: null == organizationEmail
          ? _value.organizationEmail
          : organizationEmail // ignore: cast_nullable_to_non_nullable
              as String,
      organizationAddress: null == organizationAddress
          ? _value.organizationAddress
          : organizationAddress // ignore: cast_nullable_to_non_nullable
              as String,
      organizationPhone: null == organizationPhone
          ? _value.organizationPhone
          : organizationPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wallet extends _Wallet {
  _$_Wallet(
      {@JsonKey(name: 'balance', fromJson: toRubles)
          required this.balance,
      @JsonKey(name: 'total_limit', fromJson: toRubles)
          required this.totalLimit,
      @JsonKey(fromJson: dateTimeFromString, toJson: dateTimeToString, name: 'next_replenishment')
          required this.nextReplenishment,
      @JsonKey(name: 'organization_label')
          required this.organizationLabel,
      @JsonKey(name: 'organization_inn')
          required this.organizationInn,
      @JsonKey(name: 'email')
          required this.organizationEmail,
      @JsonKey(name: 'organization_address')
          required this.organizationAddress,
      @JsonKey(name: 'phone')
          required this.organizationPhone})
      : super._();

  factory _$_Wallet.fromJson(Map<String, dynamic> json) =>
      _$$_WalletFromJson(json);

// Текущий остаток на балансе в копейках
  @override
  @JsonKey(name: 'balance', fromJson: toRubles)
  final int balance;
// Лимит без вычета купленных тренировок
  @override
  @JsonKey(name: 'total_limit', fromJson: toRubles)
  final int totalLimit;
// Дата следующего попонения кошелька
  @override
  @JsonKey(
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
      name: 'next_replenishment')
  final DateTime nextReplenishment;
// Наименование организации, в которой юзер состоит
  @override
  @JsonKey(name: 'organization_label')
  final String organizationLabel;
// ИНН организации
  @override
  @JsonKey(name: 'organization_inn')
  final String organizationInn;
// Email организации
  @override
  @JsonKey(name: 'email')
  final String organizationEmail;
// Адресс организации
  @override
  @JsonKey(name: 'organization_address')
  final String organizationAddress;
// Телефон организации
  @override
  @JsonKey(name: 'phone')
  final String organizationPhone;

  @override
  String toString() {
    return 'Wallet(balance: $balance, totalLimit: $totalLimit, nextReplenishment: $nextReplenishment, organizationLabel: $organizationLabel, organizationInn: $organizationInn, organizationEmail: $organizationEmail, organizationAddress: $organizationAddress, organizationPhone: $organizationPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallet &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.totalLimit, totalLimit) ||
                other.totalLimit == totalLimit) &&
            (identical(other.nextReplenishment, nextReplenishment) ||
                other.nextReplenishment == nextReplenishment) &&
            (identical(other.organizationLabel, organizationLabel) ||
                other.organizationLabel == organizationLabel) &&
            (identical(other.organizationInn, organizationInn) ||
                other.organizationInn == organizationInn) &&
            (identical(other.organizationEmail, organizationEmail) ||
                other.organizationEmail == organizationEmail) &&
            (identical(other.organizationAddress, organizationAddress) ||
                other.organizationAddress == organizationAddress) &&
            (identical(other.organizationPhone, organizationPhone) ||
                other.organizationPhone == organizationPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      balance,
      totalLimit,
      nextReplenishment,
      organizationLabel,
      organizationInn,
      organizationEmail,
      organizationAddress,
      organizationPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      __$$_WalletCopyWithImpl<_$_Wallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletToJson(
      this,
    );
  }
}

abstract class _Wallet extends Wallet {
  factory _Wallet(
      {@JsonKey(name: 'balance', fromJson: toRubles)
          required final int balance,
      @JsonKey(name: 'total_limit', fromJson: toRubles)
          required final int totalLimit,
      @JsonKey(fromJson: dateTimeFromString, toJson: dateTimeToString, name: 'next_replenishment')
          required final DateTime nextReplenishment,
      @JsonKey(name: 'organization_label')
          required final String organizationLabel,
      @JsonKey(name: 'organization_inn')
          required final String organizationInn,
      @JsonKey(name: 'email')
          required final String organizationEmail,
      @JsonKey(name: 'organization_address')
          required final String organizationAddress,
      @JsonKey(name: 'phone')
          required final String organizationPhone}) = _$_Wallet;
  _Wallet._() : super._();

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$_Wallet.fromJson;

  @override // Текущий остаток на балансе в копейках
  @JsonKey(name: 'balance', fromJson: toRubles)
  int get balance;
  @override // Лимит без вычета купленных тренировок
  @JsonKey(name: 'total_limit', fromJson: toRubles)
  int get totalLimit;
  @override // Дата следующего попонения кошелька
  @JsonKey(
      fromJson: dateTimeFromString,
      toJson: dateTimeToString,
      name: 'next_replenishment')
  DateTime get nextReplenishment;
  @override // Наименование организации, в которой юзер состоит
  @JsonKey(name: 'organization_label')
  String get organizationLabel;
  @override // ИНН организации
  @JsonKey(name: 'organization_inn')
  String get organizationInn;
  @override // Email организации
  @JsonKey(name: 'email')
  String get organizationEmail;
  @override // Адресс организации
  @JsonKey(name: 'organization_address')
  String get organizationAddress;
  @override // Телефон организации
  @JsonKey(name: 'phone')
  String get organizationPhone;
  @override
  @JsonKey(ignore: true)
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      throw _privateConstructorUsedError;
}
