import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastName(String? lastName) {
    assert(lastName != null);

    return LastName._(
      validateName(lastName!),
    );
  }

  const LastName._(this.value);
}
