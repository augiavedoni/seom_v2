import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_failure.freezed.dart';

@freezed
class VehicleFailure with _$VehicleFailure {
  const factory VehicleFailure.unexpected() = VehicleFailureUnexpected;
  const factory VehicleFailure.vehicleNotFound() =
      VehicleFailureVehicleNotFound;
  const factory VehicleFailure.alreadyParked() = VehicleFailureAlreadyParked;
  const factory VehicleFailure.parkingTicketNotFound() =
      VehicleFailureParkingTicketNotFound;
}
