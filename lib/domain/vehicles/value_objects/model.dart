import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Model extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Model(String input) {
    return Model._(validateStringNotEmpty(input));
  }

  const Model._(this.value);
}
