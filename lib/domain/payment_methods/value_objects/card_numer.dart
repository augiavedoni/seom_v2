import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';
import 'package:seom_v2/domain/core/value_validators.dart';

class CardNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CardNumber(String input) {
    return CardNumber._(validateCardNumber(input));
  }

  const CardNumber._(this.value);
}
