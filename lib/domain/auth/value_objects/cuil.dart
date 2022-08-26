import 'package:dartz/dartz.dart';

import '../../core/value_object.dart';
import '../../core/failures.dart';
import '../../core/value_validators.dart';

class Cuil extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Cuil(String? cuil) {
    assert(cuil != null);

    return Cuil._(
      validateCuil(cuil!),
    );
  }

  const Cuil._(this.value);
}
