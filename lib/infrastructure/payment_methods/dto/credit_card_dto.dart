// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/id.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'credit_card_dto.freezed.dart';
part 'credit_card_dto.g.dart';

@freezed
abstract class CreditCardDto implements _$CreditCardDto {
  const CreditCardDto._();

  @JsonSerializable(explicitToJson: true)
  const factory CreditCardDto({
    required String id,
    required String type,
    required String brand,
    required int expiryMonth,
    required int expiryYear,
    required String lastFourDigits,
  }) = _CreditCardDTO;

  factory CreditCardDto.fromDomain(CreditCard creditCard) {
    return CreditCardDto(
      id: creditCard.id.getOrCrash(),
      type: creditCard.type.getOrCrash(),
      brand: creditCard.brand.getOrCrash(),
      expiryMonth: creditCard.expiryMonth.getOrCrash(),
      expiryYear: creditCard.expiryYear.getOrCrash(),
      lastFourDigits: creditCard.lastFourDigits.getOrCrash(),
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod.creditCard(
      id: Id(id),
      type: Type(type),
      brand: Brand(brand),
      expiryMonth: ExpiryMonth(expiryMonth),
      expiryYear: ExpiryYear(expiryYear),
      lastFourDigits: LastFourDigits(lastFourDigits),
    );
  }

  factory CreditCardDto.fromJson(Map<String, dynamic> json) =>
      _$CreditCardDtoFromJson(json);
}
