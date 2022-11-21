part of 'payment_method_form_bloc.dart';

@freezed
class PaymentMethodFormEvent with _$PaymentMethodFormEvent {
  const factory PaymentMethodFormEvent.initialized(
    Option<PaymentMethod> initialPaymentMethodOption,
  ) = _Initialized;
  const factory PaymentMethodFormEvent.brandChanged(String brand) =
      _BrandChanged;
  const factory PaymentMethodFormEvent.expiryMonthChanged(int expiryMonth) =
      _ExpiryMonthChanged;
  const factory PaymentMethodFormEvent.expiryYearChanged(int expiryYear) =
      _ExpiryYearChanged;
  const factory PaymentMethodFormEvent.lastFourDigitsChanged(String lastFourDigits) =
      _LastFourDigitsChanged;
  const factory PaymentMethodFormEvent.saved() = _Saved;
}
