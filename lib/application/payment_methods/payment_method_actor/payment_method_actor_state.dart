part of 'payment_method_actor_bloc.dart';

@freezed
class PaymentMethodActorState with _$PaymentMethodActorState {
  const factory PaymentMethodActorState.initial() = _Initial;
  const factory PaymentMethodActorState.actionInProgress() = _ActionInProgress;
  const factory PaymentMethodActorState.deleteFailure(
    PaymentMethodFailure paymentMethodFailure,
  ) = _DeleteFailure;
  const factory PaymentMethodActorState.deleteSuccess() = _DeleteSuccess;
}
