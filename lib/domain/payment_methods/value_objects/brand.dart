import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Brand extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Brand(String input) {
    return Brand._(validateCardBrand(input));
  }

  const Brand._(this.value);
}
