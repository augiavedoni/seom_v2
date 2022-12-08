part of 'payment_method_form_bloc.dart';

@freezed
class PaymentMethodFormState with _$PaymentMethodFormState {
  const factory PaymentMethodFormState({
    required PaymentMethod paymentMethod,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<PaymentMethodFailure, Unit>>
        saveFailureOrSucessOption,
  }) = _Initial;

  factory PaymentMethodFormState.initial() => PaymentMethodFormState(
        paymentMethod: PaymentMethod.emptyCard(''),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSucessOption: none(),
      );
}
