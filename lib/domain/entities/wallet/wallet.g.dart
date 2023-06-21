// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      balance: toRubles(json['balance'] as int),
      totalLimit: toRubles(json['total_limit'] as int),
      nextReplenishment:
          dateTimeFromString(json['next_replenishment'] as String),
      organizationLabel: json['organization_label'] as String,
      organizationInn: json['organization_inn'] as String,
      organizationEmail: json['email'] as String,
      organizationAddress: json['organization_address'] as String,
      organizationPhone: json['phone'] as String,
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'balance': instance.balance,
      'total_limit': instance.totalLimit,
      'next_replenishment': dateTimeToString(instance.nextReplenishment),
      'organization_label': instance.organizationLabel,
      'organization_inn': instance.organizationInn,
      'email': instance.organizationEmail,
      'organization_address': instance.organizationAddress,
      'phone': instance.organizationPhone,
    };
