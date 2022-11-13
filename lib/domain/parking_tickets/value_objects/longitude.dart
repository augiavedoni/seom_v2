import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Longitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Longitude(double input) {
    return Longitude._(validatePositionValue(input));
  }

  const Longitude._(this.value);
}
