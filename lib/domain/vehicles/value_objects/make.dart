import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class Make extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Make(String input) {
    return Make._(validateStringNotEmpty(input));
  }

  const Make._(this.value);
}
