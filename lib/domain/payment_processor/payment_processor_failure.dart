import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_processor_failure.freezed.dart';

@freezed
class PaymentProcessorFailure with _$PaymentProcessorFailure {
  const factory PaymentProcessorFailure.unexpected() =
      PaymentMethodUnexpectedFailure;
  const factory PaymentProcessorFailure.cardDeclined() = CardDeclinedFailure;
}
