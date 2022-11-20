// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debit_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DebitCardDTO _$$_DebitCardDTOFromJson(Map<String, dynamic> json) =>
    _$_DebitCardDTO(
      id: json['id'] as String,
      type: json['type'] as String,
      brand: json['brand'] as String,
      expiryMonth: json['expiryMonth'] as int,
      expiryYear: json['expiryYear'] as int,
      lastFourDigits: json['lastFourDigits'] as String,
    );

Map<String, dynamic> _$$_DebitCardDTOToJson(_$_DebitCardDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'brand': instance.brand,
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'lastFourDigits': instance.lastFourDigits,
    };
