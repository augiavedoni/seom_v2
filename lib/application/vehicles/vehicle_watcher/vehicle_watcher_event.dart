part of 'vehicle_watcher_bloc.dart';

@freezed
class VehicleWatcherEvent with _$VehicleWatcherEvent {
  const factory VehicleWatcherEvent.getAllStarted() = GetAllStarted;
}
