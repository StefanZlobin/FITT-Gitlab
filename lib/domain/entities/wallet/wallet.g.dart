// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      balance: json['balance'] as int,
      totalLimit: json['total_limit'] as int,
      nextReplenishment:
          dateTimeFromString(json['next_replenishment'] as String),
      organizationLabel: json['organization_label'] as String,
      organizationDescription: json['organization_description'] as String,
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'balance': instance.balance,
      'total_limit': instance.totalLimit,
      'next_replenishment': dateTimeToString(instance.nextReplenishment),
      'organization_label': instance.organizationLabel,
      'organization_description': instance.organizationDescription,
    };
