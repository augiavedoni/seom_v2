import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Type extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Type(String input) {
    return Type._(validateStringNotEmpty(input));
  }

  const Type._(this.value);
}
