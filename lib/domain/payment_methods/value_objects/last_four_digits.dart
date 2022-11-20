import 'package:dartz/dartz.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class LastFourDigits extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LastFourDigits(String input) {
    return LastFourDigits._(validateLastFourDigits(input));
  }

  const LastFourDigits._(this.value);
}
