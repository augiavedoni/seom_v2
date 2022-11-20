import 'package:freezed_annotation/freezed_annotation.dart';
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
}
