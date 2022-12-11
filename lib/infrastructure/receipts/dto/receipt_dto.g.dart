// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptDto _$$_ReceiptDtoFromJson(Map<String, dynamic> json) =>
    _$_ReceiptDto(
      id: json['id'] as int,
      date: json['date'] as String,
      amount: json['amount'] as String,
      paid: json['paid'] as bool,
      chargeId: json['chargeId'] as String?,
      hasGeneratedReceipt: json['hasGeneratedReceipt'] as bool,
    );

Map<String, dynamic> _$$_ReceiptDtoToJson(_$_ReceiptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'amount': instance.amount,
      'paid': instance.paid,
      'chargeId': instance.chargeId,
      'hasGeneratedReceipt': instance.hasGeneratedReceipt,
    };
