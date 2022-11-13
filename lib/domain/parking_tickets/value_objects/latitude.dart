import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Latitude extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Latitude(double input) {
    return Latitude._(validatePositionValue(input));
  }

  const Latitude._(this.value);
}
