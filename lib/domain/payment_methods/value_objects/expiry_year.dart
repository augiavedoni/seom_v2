import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class ExpiryYear extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExpiryYear(String input) {
    return ExpiryYear._(validateExpiryYear(input));
  }

  const ExpiryYear._(this.value);
}
