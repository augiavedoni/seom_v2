import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class EndTime extends ValueObject<TimeOfDay> {
  @override
  final Either<ValueFailure<TimeOfDay>, TimeOfDay> value;

  factory EndTime(String input) {
    return EndTime._(validateTimeOfDay(input));
  }

  const EndTime._(this.value);
}
