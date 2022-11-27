import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/i_payment_method_repository.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/card_numer.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_month.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/expiry_year.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/security_code.dart';

part 'payment_method_form_event.dart';
part 'payment_method_form_state.dart';
part 'payment_method_form_bloc.freezed.dart';

@injectable
class PaymentMethodFormBloc
    extends Bloc<PaymentMethodFormEvent, PaymentMethodFormState> {
  final IPaymentMethodRepository _paymentMethodRepository;

  PaymentMethodFormBloc(
    this._paymentMethodRepository,
  ) : super(PaymentMethodFormState.initial()) {
    on<PaymentMethodFormEvent>(
      (event, emit) async => event.map<FutureOr>(
        initialized: (event) => emit(
          event.initialPaymentMethodOption.fold(
            () => state,
            (initialPaymentMethod) => state.copyWith(
              paymentMethod: initialPaymentMethod,
              isEditing: true,
            ),
          ),
        ),
        cardTypeChanged: (event) => emit(
          state.copyWith(
            paymentMethod: (state.paymentMethod)?.copyWith(
              type: Type(event.cardType),
            ),
            saveFailureOrSucessOption: none(),
          ),
        ),
        cardNumberChanged: (event) {
          late final PaymentMethodFormState newState;
          final paymentMethod = state.paymentMethod;

          if (paymentMethod is CreditCard) {
            newState = state.copyWith(
              paymentMethod: (paymentMethod).copyWith(
                cardNumber: CardNumber(event.cardNumber),
              ),
              saveFailureOrSucessOption: none(),
            );
          } else {
            newState = state.copyWith(
              paymentMethod: (paymentMethod as DebitCard).copyWith(
                cardNumber: CardNumber(event.cardNumber),
              ),
              saveFailureOrSucessOption: none(),
            );
          }

          emit(newState);
        },
        securityCodeChanged: (event) {
          late final PaymentMethodFormState newState;
          final paymentMethod = state.paymentMethod;

          if (paymentMethod is CreditCard) {
            newState = state.copyWith(
              paymentMethod: (paymentMethod).copyWith(
                securityCode: SecurityCode(event.securityCode),
              ),
              saveFailureOrSucessOption: none(),
            );
          } else {
            newState = state.copyWith(
              paymentMethod: (paymentMethod as DebitCard).copyWith(
                securityCode: SecurityCode(event.securityCode),
              ),
              saveFailureOrSucessOption: none(),
            );
          }

          emit(newState);
        },
        expiryMonthChanged: (event) {
          late final PaymentMethodFormState newState;
          final paymentMethod = state.paymentMethod;

          if (paymentMethod is CreditCard) {
            newState = state.copyWith(
              paymentMethod: (paymentMethod).copyWith(
                expiryMonth: ExpiryMonth(event.expiryMonth),
              ),
              saveFailureOrSucessOption: none(),
            );
          } else {
            newState = state.copyWith(
              paymentMethod: (paymentMethod as DebitCard).copyWith(
                expiryMonth: ExpiryMonth(event.expiryMonth),
              ),
              saveFailureOrSucessOption: none(),
            );
          }

          emit(newState);
        },
        expiryYearChanged: (event) {
          late final PaymentMethodFormState newState;
          final paymentMethod = state.paymentMethod;

          if (paymentMethod is CreditCard) {
            newState = state.copyWith(
              paymentMethod: (paymentMethod).copyWith(
                expiryYear: ExpiryYear(event.expiryYear),
              ),
              saveFailureOrSucessOption: none(),
            );
          } else {
            newState = state.copyWith(
              paymentMethod: (paymentMethod as DebitCard).copyWith(
                expiryYear: ExpiryYear(event.expiryYear),
              ),
              saveFailureOrSucessOption: none(),
            );
          }

          emit(newState);
        },
        saved: (event) async {
          Either<PaymentMethodFailure, Unit>? failureOrSuccess;

          emit(
            state.copyWith(
              isSaving: true,
              saveFailureOrSucessOption: none(),
            ),
          );

          if (state.paymentMethod?.failureOption.isNone() ?? false) {
            failureOrSuccess = await _paymentMethodRepository.add(
              paymentMethod: state.paymentMethod!,
            );
          }

          emit(
            state.copyWith(
              isSaving: false,
              showErrorMessages: true,
              saveFailureOrSucessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      ),
    );
  }
}
