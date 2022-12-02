import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';
import 'package:seom_v2/domain/core/value_validators.dart';

class Amount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Amount(String value) {
    return Amount._(validateStringNotEmpty(value));
  }

  const Amount._(this.value);
}
