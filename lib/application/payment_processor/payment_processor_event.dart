part of 'payment_processor_bloc.dart';

@freezed
class PaymentProcessorEvent with _$PaymentProcessorEvent {
  const factory PaymentProcessorEvent.initialized(
    Option<PaymentMethod> initialPaymentMethodOption,
  ) = _Initialized;
  const factory PaymentProcessorEvent.parkingTicketIdChanged(
    int parkingTicketId,
  ) = _ParkingTicketIdChanged;
  const factory PaymentProcessorEvent.paymentMethodChanged(
    PaymentMethod paymentMethod,
  ) = _PaymentMethodChanged;
  const factory PaymentProcessorEvent.executePayment() = _ExecutePayment;
}
