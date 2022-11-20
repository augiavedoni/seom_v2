import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class StripeId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StripeId(String? stripeId) {
    assert(stripeId != null);

    return StripeId._(validateStringNotEmpty(stripeId!));
  }

  const StripeId._(this.value);
}
