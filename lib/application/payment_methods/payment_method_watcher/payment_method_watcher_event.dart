part of 'payment_method_watcher_bloc.dart';

@freezed
class PaymentMethodWatcherEvent with _$PaymentMethodWatcherEvent {
  const factory PaymentMethodWatcherEvent.getAllStarted() = GetAllStarted;
}
