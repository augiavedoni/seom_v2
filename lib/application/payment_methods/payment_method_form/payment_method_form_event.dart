part of 'payment_method_form_bloc.dart';

@freezed
class PaymentMethodFormEvent with _$PaymentMethodFormEvent {
  const factory PaymentMethodFormEvent.initialized(
    Option<PaymentMethod> initialPaymentMethodOption,
  ) = _Initialized;
  const factory PaymentMethodFormEvent.cardTypeChanged(String cardType) =
      _CardTypeChanged;
  const factory PaymentMethodFormEvent.cardNumberChanged(String cardNumber) =
      _CardNumberChanged;
  const factory PaymentMethodFormEvent.securityCodeChanged(
    String securityCode,
  ) = _SecurityCodeChanged;
  const factory PaymentMethodFormEvent.expiryMonthChanged(int expiryMonth) =
      _ExpiryMonthChanged;
  const factory PaymentMethodFormEvent.expiryYearChanged(int expiryYear) =
      _ExpiryYearChanged;
  const factory PaymentMethodFormEvent.saved() = _Saved;
}
