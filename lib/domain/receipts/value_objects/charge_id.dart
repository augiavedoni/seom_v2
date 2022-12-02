import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';

class ChargeId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ChargeId(String value) {
    return ChargeId._(right(value));
  }

  const ChargeId._(this.value);
}
