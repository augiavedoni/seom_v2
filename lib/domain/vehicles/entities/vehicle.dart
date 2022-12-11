import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/failures.dart';
import '../value_objects/license_plate.dart';
import '../value_objects/make.dart';
import '../value_objects/model.dart';
import '../value_objects/vehicle_type.dart';
import '../value_objects/year.dart';

part 'vehicle.freezed.dart';

@freezed
class Vehicle with _$Vehicle {
  const Vehicle._();

  const factory Vehicle({
    required int id,
    required Make make,
    required Model model,
    required Year year,
    required LicensePlate licensePlate,
    required VehicleType vehicleType,
    required bool parked,
  }) = _Vehicle;

  factory Vehicle.empty() => Vehicle(
        id: -1,
        make: Make(""),
        model: Model(""),
        year: Year(0),
        licensePlate: LicensePlate(""),
        vehicleType: VehicleType(""),
        parked: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return make.failureOrUnit
        .andThen(model.failureOrUnit)
        .andThen(year.failureOrUnit)
        .andThen(licensePlate.failureOrUnit)
        .andThen(vehicleType.failureOrUnit)
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
