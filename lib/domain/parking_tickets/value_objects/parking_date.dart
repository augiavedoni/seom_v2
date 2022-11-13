import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class ParkingDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory ParkingDate(String date) {
    return ParkingDate._(validateDate(date));
  }

  const ParkingDate._(this.value);
}
