import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FirstName(String? firstName) {
    assert(firstName != null);

    return FirstName._(
      validateName(firstName!),
    );
  }

  const FirstName._(this.value);
}
