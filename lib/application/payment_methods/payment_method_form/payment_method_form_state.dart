part of 'payment_method_form_bloc.dart';

@freezed
class PaymentMethodFormState with _$PaymentMethodFormState {
  const factory PaymentMethodFormState({
    PaymentMethod? paymentMethod,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<PaymentMethodFailure, Unit>>
        saveFailureOrSucessOption,
  }) = _Initial;

  factory PaymentMethodFormState.initial() => PaymentMethodFormState(
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSucessOption: none(),
      );
}
