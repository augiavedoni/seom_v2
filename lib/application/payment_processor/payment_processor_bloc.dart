import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_processor/i_payment_method_processor_repository.dart';
import 'package:seom_v2/domain/payment_processor/payment_processor_failure.dart';
import 'package:seom_v2/domain/receipts/entities/receipt.dart';

part 'payment_processor_event.dart';
part 'payment_processor_state.dart';
part 'payment_processor_bloc.freezed.dart';

@injectable
class PaymentProcessorBloc
    extends Bloc<PaymentProcessorEvent, PaymentProcessorState> {
  final IPaymentProcessorRepository _paymentProcessorRepository;

  PaymentProcessorBloc(
    this._paymentProcessorRepository,
  ) : super(PaymentProcessorState.initial()) {
    on<PaymentProcessorEvent>(
      (event, emit) async => event.map<FutureOr>(
        initialized: (event) => emit(
          event.initialPaymentMethodOption.fold(
            () => state,
            (initialPaymentMethod) => state.copyWith(
              paymentMethod: initialPaymentMethod,
            ),
          ),
        ),
        parkingTicketIdChanged: (event) => emit(
          state.copyWith(
            parkingTicketId: event.parkingTicketId,
            saveFailureOrSucessOption: none(),
          ),
        ),
        paymentMethodChanged: (event) => emit(
          state.copyWith(
            paymentMethod: event.paymentMethod,
            saveFailureOrSucessOption: none(),
          ),
        ),
        receiptChanged: (event) => emit(
          state.copyWith(
            receipt: event.receipt,
            saveFailureOrSucessOption: none(),
          ),
        ),
        executePayment: (event) async {
          final isAccountBalance = state.paymentMethod is AccountBalance;
          Either<PaymentProcessorFailure, Receipt>? failureOrSuccess;

          emit(
            state.copyWith(
              isSaving: true,
              saveFailureOrSucessOption: none(),
            ),
          );

          if (state.paymentMethod?.failureOption.isNone() ?? false) {
            failureOrSuccess = await _paymentProcessorRepository.executePayment(
              parkingTicketId: state.parkingTicketId,
              isAccountBalance: isAccountBalance,
              paymentMethodId: isAccountBalance
                  ? ''
                  : (state.paymentMethod as Card).id.getOrCrash(),
            );
          }

          emit(
            state.copyWith(
              isSaving: false,
              saveFailureOrSucessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      ),
    );
  }
}
