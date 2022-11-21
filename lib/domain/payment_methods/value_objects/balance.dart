import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';

class Balance extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Balance(double input) {
    return Balance._(right(input));
  }

  const Balance._(this.value);
}
