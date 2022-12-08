import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:credit_card_type_detector/credit_card_type_detector.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/i_payment_method_repository.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/brand.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/last_four_digits.dart';
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
          state.copyWith(
            paymentMethod: state.paymentMethod.copyWith(
              type: Type(event.paymentMethodType),
            ),
            isEditing: true,
          ),
        ),
        cardNumberChanged: (event) => emit(
          state.copyWith(
            paymentMethod: (state.paymentMethod as Card).copyWith(
              cardNumber: CardNumber(event.cardNumber),
              brand: Brand(
                detectCCType(event.cardNumber) == CreditCardType.visa
                    ? 'visa'
                    : 'mastercard',
              ),
              lastFourDigits: LastFourDigits(
                event.cardNumber.isNotEmpty && event.cardNumber.length >= 4
                    ? event.cardNumber.substring(event.cardNumber.length - 4)
                    : '',
              ),
            ),
            saveFailureOrSucessOption: none(),
          ),
        ),
        securityCodeChanged: (event) => emit(
          state.copyWith(
            paymentMethod: (state.paymentMethod as Card).copyWith(
              securityCode: SecurityCode(event.securityCode),
            ),
            saveFailureOrSucessOption: none(),
          ),
        ),
        expiryMonthChanged: (event) => emit(
          state.copyWith(
            paymentMethod: (state.paymentMethod as Card).copyWith(
              expiryMonth: ExpiryMonth(event.expiryMonth),
            ),
            saveFailureOrSucessOption: none(),
          ),
        ),
        expiryYearChanged: (event) => emit(
          state.copyWith(
            paymentMethod: (state.paymentMethod as Card).copyWith(
              expiryYear: ExpiryYear(event.expiryYear),
            ),
            saveFailureOrSucessOption: none(),
          ),
        ),
        saved: (event) async {
          Either<PaymentMethodFailure, Unit>? failureOrSuccess;
          final paymentMethod = state.paymentMethod as Card;
          final isCardNumberValid =
              paymentMethod.cardNumber?.isValid() ?? false;
          final isSecuriteCodeValid =
              paymentMethod.securityCode?.isValid() ?? false;

          if (paymentMethod.failureOption.isNone() &&
              isCardNumberValid &&
              isSecuriteCodeValid) {
            emit(
              state.copyWith(
                isSaving: true,
                saveFailureOrSucessOption: none(),
              ),
            );

            failureOrSuccess = await _paymentMethodRepository.add(
              paymentMethod: state.paymentMethod,
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
