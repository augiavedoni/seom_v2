part of 'payment_method_form_bloc.dart';

@freezed
class PaymentMethodFormEvent with _$PaymentMethodFormEvent {
  const factory PaymentMethodFormEvent.initialized(
    String paymentMethodType,
  ) = _Initialized;
  const factory PaymentMethodFormEvent.cardNumberChanged(String cardNumber) =
      _CardNumberChanged;
  const factory PaymentMethodFormEvent.securityCodeChanged(
    String securityCode,
  ) = _SecurityCodeChanged;
  const factory PaymentMethodFormEvent.expiryMonthChanged(String expiryMonth) =
      _ExpiryMonthChanged;
  const factory PaymentMethodFormEvent.expiryYearChanged(String expiryYear) =
      _ExpiryYearChanged;
  const factory PaymentMethodFormEvent.saved() = _Saved;
}
