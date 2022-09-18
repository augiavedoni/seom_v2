part of 'vehicle_actor_bloc.dart';

@freezed
class VehicleActorState with _$VehicleActorState {
  const factory VehicleActorState({
    required Vehicle vehicle,
    required bool isChangingParkingStatus,
    required Option<Either<VehicleFailure, Vehicle>> saveFailureOrSucessOption,
  }) = _Initial;

  factory VehicleActorState.initial() => VehicleActorState(
        vehicle: Vehicle.empty(),
        isChangingParkingStatus: false,
        saveFailureOrSucessOption: none(),
      );
}
