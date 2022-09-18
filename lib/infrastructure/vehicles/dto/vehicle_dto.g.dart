// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleDTO _$$_VehicleDTOFromJson(Map<String, dynamic> json) =>
    _$_VehicleDTO(
      id: json['id'] as int,
      make: json['make'] as String,
      model: json['model'] as String,
      year: json['year'] as int,
      vehicleType: json['vehicleType'] as String,
      licensePlate: json['licensePlate'] as String,
      parked: json['parked'] as bool,
    );

Map<String, dynamic> _$$_VehicleDTOToJson(_$_VehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'make': instance.make,
      'model': instance.model,
      'year': instance.year,
      'vehicleType': instance.vehicleType,
      'licensePlate': instance.licensePlate,
      'parked': instance.parked,
    };
