part of 'payment_method_actor_bloc.dart';

@freezed
class PaymentMethodActorEvent with _$PaymentMethodActorEvent {
  const factory PaymentMethodActorEvent.delete(
    PaymentMethod paymentMethod,
  ) = _DeletePaymentMethod;
}
