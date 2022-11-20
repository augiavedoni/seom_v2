import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Balance extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Balance(double input) {
    return Balance._(validateAccountBalance(input));
  }

  const Balance._(this.value);
}
