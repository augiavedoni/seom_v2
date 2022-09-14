import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class RefreshToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RefreshToken(String? refreshToken) {
    assert(refreshToken != null);

    return RefreshToken._(
      validateRefreshToken(refreshToken!),
    );
  }

  const RefreshToken._(this.value);
}
