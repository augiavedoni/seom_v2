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

  const factory PaymentMethod.creditCard({
    required Type type,
    required Id id,
    CardNumber? cardNumber,
    SecurityCode? securityCode,
    required Brand brand,
    required ExpiryMonth expiryMonth,
    required ExpiryYear expiryYear,
    required LastFourDigits lastFourDigits,
  }) = CreditCard;

  factory PaymentMethod.emptyCreditCard() => PaymentMethod.creditCard(
        type: Type('credit'),
        id: Id(''),
        brand: Brand(''),
        expiryMonth: ExpiryMonth(0),
        expiryYear: ExpiryYear(0),
        lastFourDigits: LastFourDigits(''),
      );

  const factory PaymentMethod.debitCard({
    required Type type,
    required Id id,
    CardNumber? cardNumber,
    SecurityCode? securityCode,
    required Brand brand,
    required ExpiryMonth expiryMonth,
    required ExpiryYear expiryYear,
    required LastFourDigits lastFourDigits,
  }) = DebitCard;

  factory PaymentMethod.emptyDebitCard() => PaymentMethod.debitCard(
        type: Type('debit'),
        id: Id(''),
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
    if (this is CreditCard) {
      final creditCard = this as CreditCard;

      return creditCard.type.failureOrUnit
          .andThen(
            creditCard.id.failureOrUnit,
          )
          .andThen(
            creditCard.brand.failureOrUnit,
          )
          .andThen(
            creditCard.expiryMonth.failureOrUnit,
          )
          .andThen(
            creditCard.expiryYear.failureOrUnit,
          )
          .andThen(
            creditCard.lastFourDigits.failureOrUnit,
          )
          .fold(
            (failure) => some(failure),
            (_) => none(),
          );
    } else if (this is DebitCard) {
      final debitCard = this as DebitCard;

      return debitCard.type.failureOrUnit
          .andThen(
            debitCard.id.failureOrUnit,
          )
          .andThen(
            debitCard.brand.failureOrUnit,
          )
          .andThen(
            debitCard.expiryMonth.failureOrUnit,
          )
          .andThen(
            debitCard.expiryYear.failureOrUnit,
          )
          .andThen(
            debitCard.lastFourDigits.failureOrUnit,
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
