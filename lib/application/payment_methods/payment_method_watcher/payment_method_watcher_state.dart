part of 'payment_method_watcher_bloc.dart';

@freezed
class PaymentMethodWatcherState with _$PaymentMethodWatcherState {
  const factory PaymentMethodWatcherState.initial() =
      PaymentMethodWatcherInitialState;
  const factory PaymentMethodWatcherState.loadInProgress() =
      PaymentMethodWatcherLoadInProgressState;
  const factory PaymentMethodWatcherState.loadSuccess(
    KtList<PaymentMethod> paymentMethods,
  ) = PaymentMethodWatcherLoadSuccessState;
  const factory PaymentMethodWatcherState.loadFailure(
    PaymentMethodFailure paymentMethodFailure,
  ) = PaymentMethodWatcherLoadFailureState;
}
