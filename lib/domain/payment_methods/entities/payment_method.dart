import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/balance.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/card_numer.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/id.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/security_code.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'payment_method.freezed.dart';

@freezed
abstract class PaymentMethod implements _$PaymentMethod {
  const PaymentMethod._();

  const factory PaymentMethod.card({
    required Type type,
    required Id id,
    CardNumber? cardNumber,
    SecurityCode? securityCode,
    required Brand brand,
    required ExpiryMonth expiryMonth,
    required ExpiryYear expiryYear,
    required LastFourDigits lastFourDigits,
  }) = Card;

  factory PaymentMethod.emptyCard() => PaymentMethod.card(
        type: Type('credit'),
        id: Id(''),
        cardNumber: CardNumber(''),
        securityCode: SecurityCode(''),
        brand: Brand(''),
        expiryMonth: ExpiryMonth(0),
        expiryYear: ExpiryYear(0),
        lastFourDigits: LastFourDigits(''),
      );

  const factory PaymentMethod.accountBalance({
    required Type type,
    required Balance balance,
  }) = AccountBalance;

  Option<ValueFailure<dynamic>> get failureOption {
    if (this is Card) {
      final card = this as Card;

      return card.type.failureOrUnit
          .andThen(
            card.id.failureOrUnit,
          )
          .andThen(
            card.brand.failureOrUnit,
          )
          .andThen(
            card.expiryMonth.failureOrUnit,
          )
          .andThen(
            card.expiryYear.failureOrUnit,
          )
          .andThen(
            card.lastFourDigits.failureOrUnit,
          )
          .fold(
            (failure) => some(failure),
            (_) => none(),
          );
    } else {
      final accountBalance = this as AccountBalance;

      return accountBalance.type.failureOrUnit
          .andThen(accountBalance.balance.failureOrUnit)
          .fold(
            (failure) => some(failure),
            (_) => none(),
          );
    }
  }
}
