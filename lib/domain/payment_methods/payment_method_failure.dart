import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_failure.freezed.dart';

@freezed
class PaymentMethodFailure with _$PaymentMethodFailure {
  const factory PaymentMethodFailure.unexpected() =
      PaymentMethodUnexpectedFailure;
  const factory PaymentMethodFailure.notFound() = PaymentMethodNotFoundFailure;
}
