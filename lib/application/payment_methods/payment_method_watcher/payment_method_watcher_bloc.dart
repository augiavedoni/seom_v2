import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/i_payment_method_repository.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';

part 'payment_method_watcher_event.dart';
part 'payment_method_watcher_state.dart';
part 'payment_method_watcher_bloc.freezed.dart';

@injectable
class PaymentMethodWatcherBloc
    extends Bloc<PaymentMethodWatcherEvent, PaymentMethodWatcherState> {
  final IPaymentMethodRepository _paymentMethodRepository;

  PaymentMethodWatcherBloc(
    this._paymentMethodRepository,
  ) : super(const PaymentMethodWatcherState.initial()) {
    on<PaymentMethodWatcherEvent>(
      (event, emit) async => await event.map<FutureOr<void>>(
        getAllStarted: (event) async {
          emit(const PaymentMethodWatcherState.loadInProgress());

          final failureOrSuccess = await _paymentMethodRepository.getAll();

          emit(
            failureOrSuccess.fold(
              (failure) => PaymentMethodWatcherState.loadFailure(failure),
              (paymentMethods) => PaymentMethodWatcherState.loadSuccess(
                paymentMethods,
              ),
            ),
          );
        },
      ),
    );
  }
}
