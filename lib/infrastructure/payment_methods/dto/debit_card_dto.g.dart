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
      expiryMonth: json['expiry_month'] as int,
      expiryYear: json['expiry_year'] as int,
      lastFourDigits: json['last_four_digits'] as String,
    );

Map<String, dynamic> _$$_DebitCardDTOToJson(_$_DebitCardDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'brand': instance.brand,
      'expiry_month': instance.expiryMonth,
      'expiry_year': instance.expiryYear,
      'last_four_digits': instance.lastFourDigits,
    };
