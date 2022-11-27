import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';
import 'package:seom_v2/domain/core/value_validators.dart';

class SecurityCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SecurityCode(String input) {
    return SecurityCode._(validateSecurityCode(input));
  }

  const SecurityCode._(this.value);
}
