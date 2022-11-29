import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/id.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  @JsonSerializable(explicitToJson: true)
  const factory CardDto({
    required String id,
    required String type,
    required String brand,
    @JsonKey(name: 'expiry_month') required int expiryMonth,
    @JsonKey(name: 'expiry_year') required int expiryYear,
    @JsonKey(name: 'last_four_digits') required String lastFourDigits,
  }) = _CardDTO;

  factory CardDto.fromDomain(Card card) {
    return CardDto(
      id: card.id.getOrCrash(),
      type: card.type.getOrCrash(),
      brand: card.brand.getOrCrash(),
      expiryMonth: int.parse(card.expiryMonth.getOrCrash()),
      expiryYear: int.parse(card.expiryYear.getOrCrash()),
      lastFourDigits: card.lastFourDigits.getOrCrash(),
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod.card(
      id: Id(id),
      type: Type(type),
      brand: Brand(brand),
      expiryMonth: ExpiryMonth(expiryMonth.toString()),
      expiryYear: ExpiryYear(expiryYear.toString()),
      lastFourDigits: LastFourDigits(lastFourDigits),
    );
  }

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);
}
