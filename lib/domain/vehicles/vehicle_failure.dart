import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_failure.freezed.dart';

@freezed
class VehicleFailure with _$VehicleFailure {
  const factory VehicleFailure.unexpected() = _Unexpected;
  const factory VehicleFailure.vehicleNotFound() = _VehicleNotFound;
  const factory VehicleFailure.alreadyParked() = _AlreadyParked;
  const factory VehicleFailure.parkingTicketNotFound() = _ParkingTicketNotFound;
}
