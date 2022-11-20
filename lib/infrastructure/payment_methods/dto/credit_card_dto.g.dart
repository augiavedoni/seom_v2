// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCardDTO _$$_CreditCardDTOFromJson(Map<String, dynamic> json) =>
    _$_CreditCardDTO(
      id: json['id'] as String,
      type: json['type'] as String,
      brand: json['brand'] as String,
      expiryMonth: json['expiryMonth'] as int,
      expiryYear: json['expiryYear'] as int,
      lastFourDigits: json['lastFourDigits'] as String,
    );

Map<String, dynamic> _$$_CreditCardDTOToJson(_$_CreditCardDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'brand': instance.brand,
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'lastFourDigits': instance.lastFourDigits,
    };
