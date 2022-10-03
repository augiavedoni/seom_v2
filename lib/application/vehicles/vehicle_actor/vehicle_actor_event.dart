part of 'vehicle_actor_bloc.dart';

@freezed
class VehicleActorEvent with _$VehicleActorEvent {
  const factory VehicleActorEvent.initialized(
    Option<Vehicle> initialVehicleOption,
  ) = _Initialized;
  const factory VehicleActorEvent.parked(Position? position) = _Parked;
  const factory VehicleActorEvent.unparked() = _Unparked;
}
