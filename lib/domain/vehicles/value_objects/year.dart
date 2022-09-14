import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Year extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Year(int input) {
    return Year._(validateYear(input));
  }

  const Year._(this.value);
}
