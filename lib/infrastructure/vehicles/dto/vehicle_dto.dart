// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/vehicles/entities/vehicle.dart';
import '../../../domain/vehicles/value_objects/license_plate.dart';
import '../../../domain/vehicles/value_objects/make.dart';
import '../../../domain/vehicles/value_objects/model.dart';
import '../../../domain/vehicles/value_objects/vehicle_type.dart';
import '../../../domain/vehicles/value_objects/year.dart';

part 'vehicle_dto.freezed.dart';
part 'vehicle_dto.g.dart';

@freezed
abstract class VehicleDto implements _$VehicleDto {
  const VehicleDto._();

  @JsonSerializable(explicitToJson: true)
  const factory VehicleDto({
    required int id,
    required String make,
    required String model,
    required int year,
    required String vehicleType,
    required String licensePlate,
    required bool parked,
  }) = _VehicleDTO;

  factory VehicleDto.fromDomain(Vehicle vehicle) {
    return VehicleDto(
      id: vehicle.id,
      make: vehicle.make.getOrCrash(),
      model: vehicle.model.getOrCrash(),
      year: vehicle.year.getOrCrash(),
      vehicleType: vehicle.vehicleType.getOrCrash(),
      licensePlate: vehicle.licensePlate.getOrCrash(),
      parked: vehicle.parked,
    );
  }

  Vehicle toDomain() {
    return Vehicle(
      id: id,
      make: Make(make),
      model: Model(model),
      year: Year(year),
      vehicleType: VehicleType(vehicleType),
      licensePlate: LicensePlate(licensePlate),
      parked: parked,
    );
  }

  factory VehicleDto.fromJson(Map<String, dynamic> json) =>
      _$VehicleDtoFromJson(json);
}
