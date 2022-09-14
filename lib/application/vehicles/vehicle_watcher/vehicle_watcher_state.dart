part of 'vehicle_watcher_bloc.dart';

@freezed
class VehicleWatcherState with _$VehicleWatcherState {
  const factory VehicleWatcherState.initial() = _Initial;
  const factory VehicleWatcherState.loadInProgress() = _LoadInProgress;
  const factory VehicleWatcherState.loadSuccess(KtList<Vehicle> vehicles) =
      _LoadSuccess;
  const factory VehicleWatcherState.loadFailure(
    VehicleFailure vehicleFailure,
  ) = _LoadFailure;
}
