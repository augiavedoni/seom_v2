// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBalanceDTO _$$_AccountBalanceDTOFromJson(Map<String, dynamic> json) =>
    _$_AccountBalanceDTO(
      type: json['type'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AccountBalanceDTOToJson(
        _$_AccountBalanceDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'balance': instance.balance,
    };
