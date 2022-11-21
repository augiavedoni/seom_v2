// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/id.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'debit_card_dto.freezed.dart';
part 'debit_card_dto.g.dart';

@freezed
abstract class DebitCardDto implements _$DebitCardDto {
  const DebitCardDto._();

  @JsonSerializable(explicitToJson: true)
  const factory DebitCardDto({
    required String id,
    required String type,
    required String brand,
    @JsonKey(name: 'expiry_month') required int expiryMonth,
    @JsonKey(name: 'expiry_year') required int expiryYear,
    @JsonKey(name: 'last_four_digits') required String lastFourDigits,
  }) = _DebitCardDTO;

  factory DebitCardDto.fromDomain(DebitCard debitCard) {
    return DebitCardDto(
      id: debitCard.id.getOrCrash(),
      type: debitCard.type.getOrCrash(),
      brand: debitCard.brand.getOrCrash(),
      expiryMonth: debitCard.expiryMonth.getOrCrash(),
      expiryYear: debitCard.expiryYear.getOrCrash(),
      lastFourDigits: debitCard.lastFourDigits.getOrCrash(),
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod.debitCard(
      id: Id(id),
      type: Type(type),
      brand: Brand(brand),
      expiryMonth: ExpiryMonth(expiryMonth),
      expiryYear: ExpiryYear(expiryYear),
      lastFourDigits: LastFourDigits(lastFourDigits),
    );
  }

  factory DebitCardDto.fromJson(Map<String, dynamic> json) =>
      _$DebitCardDtoFromJson(json);
}
