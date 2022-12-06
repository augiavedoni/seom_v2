part of 'payment_processor_bloc.dart';

@freezed
class PaymentProcessorState with _$PaymentProcessorState {
  const factory PaymentProcessorState({
    PaymentMethod? paymentMethod,
    Receipt? receipt,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<PaymentProcessorFailure, Unit>>
        saveFailureOrSucessOption,
  }) = _Initial;

  factory PaymentProcessorState.initial() => PaymentProcessorState(
        showErrorMessages: false,
        isSaving: false,
        saveFailureOrSucessOption: none(),
      );
}
