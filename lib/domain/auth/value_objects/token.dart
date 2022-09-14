import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class Token extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Token(String? token) {
    assert(token != null);

    return Token._(
      validateToken(token!),
    );
  }

  const Token._(this.value);
}
