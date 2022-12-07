part of 'payment_processor_bloc.dart';

@freezed
class PaymentProcessorState with _$PaymentProcessorState {
  const factory PaymentProcessorState({
    PaymentMethod? paymentMethod,
    Receipt? receipt,
    required String amount,
    required bool isSaving,
    required Option<Either<PaymentProcessorFailure, Unit>>
        saveFailureOrSucessOption,
  }) = _Initial;

  factory PaymentProcessorState.initial() => PaymentProcessorState(
        amount: '0.00',
        isSaving: false,
        saveFailureOrSucessOption: none(),
      );
}
