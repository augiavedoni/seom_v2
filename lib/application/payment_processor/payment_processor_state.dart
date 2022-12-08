part of 'payment_processor_bloc.dart';

@freezed
class PaymentProcessorState with _$PaymentProcessorState {
  const factory PaymentProcessorState({
    PaymentMethod? paymentMethod,
    Receipt? receipt,
    required int receiptId,
    required bool isSaving,
    required Option<Either<PaymentProcessorFailure, Unit>>
        saveFailureOrSucessOption,
  }) = _Initial;

  factory PaymentProcessorState.initial() => PaymentProcessorState(
        receiptId: -1,
        isSaving: false,
        saveFailureOrSucessOption: none(),
      );
}
