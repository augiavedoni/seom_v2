import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class ExpiryMonth extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExpiryMonth(String input) {
    return ExpiryMonth._(validateExpiryMonth(input));
  }

  const ExpiryMonth._(this.value);
}
