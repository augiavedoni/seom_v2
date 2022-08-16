import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(const ValueFailure.empty());
  }
}

Either<ValueFailure<String>, String> validateName(String name) {
  const String regEx = r"""^(([A-za-z]+[\s]{1}[A-za-z]+)|([A-Za-z]+))$""";

  if (RegExp(regEx).hasMatch(name) && name.length >= 3) {
    return right(name);
  } else {
    if (name.isEmpty) {
      return left(
        const ValueFailure.emptyName(),
      );
    } else if (name.length <= 3) {
      return left(
        ValueFailure.shortName(failedValue: name),
      );
    } else {
      return left(
        ValueFailure.invalidName(failedValue: name),
      );
    }
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String emailAddress) {
  const String regEx =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(regEx).hasMatch(emailAddress)) {
    return right(emailAddress);
  } else {
    if (emailAddress.isEmpty) {
      return left(
        const ValueFailure.emptyEmail(),
      );
    } else {
      return left(
        ValueFailure.invalidEmail(failedValue: emailAddress),
      );
    }
  }
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.length >= 6) {
    return right(password);
  } else {
    if (password.isEmpty) {
      return left(
        const ValueFailure.emptyPassword(),
      );
    } else {
      return left(
        ValueFailure.shortPassword(failedValue: password),
      );
    }
  }
}
