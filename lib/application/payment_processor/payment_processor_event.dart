part of 'payment_processor_bloc.dart';

@freezed
class PaymentProcessorEvent with _$PaymentProcessorEvent {
  const factory PaymentProcessorEvent.initialized(
    Option<PaymentMethod> initialPaymentMethodOption,
  ) = _Initialized;
  const factory PaymentProcessorEvent.receiptIdChanged(
    int receiptId,
  ) = _ReceiptIdChanged;
  const factory PaymentProcessorEvent.paymentMethodChanged(
    PaymentMethod paymentMethod,
  ) = _PaymentMethodChanged;
  const factory PaymentProcessorEvent.receiptChanged(
    Receipt receipt,
  ) = _ReceiptChanged;
  const factory PaymentProcessorEvent.executePayment() = _ExecutePayment;
}
