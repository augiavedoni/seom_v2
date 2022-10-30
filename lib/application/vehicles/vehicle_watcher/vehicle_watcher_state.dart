part of 'vehicle_watcher_bloc.dart';

@freezed
class VehicleWatcherState with _$VehicleWatcherState {
  const factory VehicleWatcherState.initial() = VehicleWatcherStateInitial;
  const factory VehicleWatcherState.loadInProgress() =
      VehicleWatcherStateLoadInProgress;
  const factory VehicleWatcherState.loadSuccess(KtList<Vehicle> vehicles) =
      VehicleWatcherStateLoadSuccess;
  const factory VehicleWatcherState.loadFailure(
    VehicleFailure vehicleFailure,
  ) = VehicleWatcherStateLoadFailure;
}
