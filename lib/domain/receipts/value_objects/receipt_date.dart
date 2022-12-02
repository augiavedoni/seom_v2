import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/core/value_object.dart';
import 'package:seom_v2/domain/core/value_validators.dart';

class ReceiptDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory ReceiptDate(String date) {
    return ReceiptDate._(validateDate(date));
  }

  const ReceiptDate._(this.value);
}
