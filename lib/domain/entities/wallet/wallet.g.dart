// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      balance: json['balance'] as int,
      nextReplenishment:
          dateTimeFromString(json['next_replenishment'] as String),
      organizationInfo: UserOrganization.fromJson(
          json['organizationInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'balance': instance.balance,
      'next_replenishment': dateTimeToString(instance.nextReplenishment),
      'organizationInfo': instance.organizationInfo,
    };
