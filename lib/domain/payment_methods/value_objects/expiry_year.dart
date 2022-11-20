import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class ExpiryYear extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ExpiryYear(int input) {
    return ExpiryYear._(validateExpiryYear(input));
  }

  const ExpiryYear._(this.value);
}
