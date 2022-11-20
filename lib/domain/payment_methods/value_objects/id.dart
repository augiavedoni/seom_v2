import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Id extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Id(String input) {
    return Id._(validateStringNotEmpty(input));
  }

  const Id._(this.value);
}
