import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/i_payment_method_repository.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';

part 'payment_method_actor_event.dart';
part 'payment_method_actor_state.dart';
part 'payment_method_actor_bloc.freezed.dart';

class PaymentMethodActorBloc
    extends Bloc<PaymentMethodActorEvent, PaymentMethodActorState> {
  final IPaymentMethodRepository _paymentMethodRepository;

  PaymentMethodActorBloc(
    this._paymentMethodRepository,
  ) : super(const PaymentMethodActorState.initial()) {
    on<PaymentMethodActorEvent>(
      (event, emit) async => await event.map<FutureOr<void>>(
        delete: (event) async {
          emit(const PaymentMethodActorState.actionInProgress());
          late final String paymentMethodId;

          if (event.paymentMethod is CreditCard) {
            paymentMethodId =
                (event.paymentMethod as CreditCard).id.getOrCrash();
          } else {
            paymentMethodId =
                (event.paymentMethod as DebitCard).id.getOrCrash();
          }

          final failureOrSuccess = await _paymentMethodRepository.delete(
            paymentMethodId: paymentMethodId,
          );

          emit(
            failureOrSuccess.fold(
              (failure) => PaymentMethodActorState.deleteFailure(failure),
              (_) => const PaymentMethodActorState.deleteSuccess(),
            ),
          );
        },
      ),
    );
  }
}
