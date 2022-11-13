import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../core/failures.dart';
import '../../core/value_object.dart';
import '../../core/value_validators.dart';

class StartTime extends ValueObject<TimeOfDay> {
  @override
  final Either<ValueFailure<TimeOfDay>, TimeOfDay> value;

  factory StartTime(String input) {
    return StartTime._(validateTimeOfDay(input));
  }

  const StartTime._(this.value);
}
