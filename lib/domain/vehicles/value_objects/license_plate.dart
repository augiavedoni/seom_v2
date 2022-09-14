import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class LicensePlate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LicensePlate(String input) {
    return LicensePlate._(validateStringNotEmpty(input));
  }

  const LicensePlate._(this.value);
}
