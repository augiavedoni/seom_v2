import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/balance.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/id.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'payment_method.freezed.dart';

@freezed
abstract class PaymentMethod implements _$PaymentMethod {
  const PaymentMethod._();

  const factory PaymentMethod.creditCard({
    required Type type,
    required Id id,
    required Brand brand,
    required ExpiryMonth expiryMonth,
    required ExpiryYear expiryYear,
    required LastFourDigits lastFourDigits,
  }) = CreditCard;

  const factory PaymentMethod.debitCard({
    required Type type,
    required Id id,
    required Brand brand,
    required ExpiryMonth expiryMonth,
    required ExpiryYear expiryYear,
    required LastFourDigits lastFourDigits,
  }) = DebitCard;

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
    } else {
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
    }
  }
}
