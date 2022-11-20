import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class ExpiryMonth extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ExpiryMonth(int input) {
    return ExpiryMonth._(validateExpiryMonth(input));
  }

  const ExpiryMonth._(this.value);
}
