import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class VehicleType extends ValueObject<String> {
  static const List<String> validTypes = [
    "CAR",
    "VAN",
    "PICKUP",
    "SUV",
    "MOTORCYCLE",
    "BUS",
    "TRUCK",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory VehicleType(String input) {
    return VehicleType._(
      validateVehicleType(input, validTypes).flatMap(validateStringNotEmpty),
    );
  }

  const VehicleType._(this.value);
}
