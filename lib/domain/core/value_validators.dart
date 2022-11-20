import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

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

Either<ValueFailure<String>, String> validateCuil(String cuil) {
  const String regEx = r"^(\d{11})$";

  if (RegExp(regEx).hasMatch(cuil)) {
    return right(cuil);
  } else {
    if (cuil.isEmpty) {
      return left(
        const ValueFailure.emptyCuil(),
      );
    } else {
      return left(
        ValueFailure.invalidCuil(failedValue: cuil),
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

Either<ValueFailure<String>, String> validateToken(String token) {
  if (token.isEmpty) {
    return left(
      const ValueFailure.emptyToken(),
    );
  } else {
    return right(token);
  }
}

Either<ValueFailure<String>, String> validateRefreshToken(String refreshToken) {
  if (refreshToken.isEmpty) {
    return left(
      const ValueFailure.emptyRefreshToken(),
    );
  } else {
    return right(refreshToken);
  }
}

Either<ValueFailure<int>, int> validateYear(int year) {
  if (year == 0 || year < 1930 || year > DateTime.now().year) {
    return left(ValueFailure.invalidYear(failedValue: year));
  } else {
    return right(year);
  }
}

Either<ValueFailure<String>, String> validateVehicleType(
  String vehicleType,
  List<String> validTypes,
) {
  if (validTypes.contains(vehicleType)) {
    return right(vehicleType);
  } else {
    return left(
      ValueFailure.invalidVehicleType(
        failedValue: vehicleType,
      ),
    );
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDate(
  String date,
) {
  final parsedDate = DateTime.tryParse(date);

  if (parsedDate != null) {
    return right(parsedDate);
  } else {
    return left(const ValueFailure.invalidDate());
  }
}

Either<ValueFailure<TimeOfDay>, TimeOfDay> validateTimeOfDay(
  String time,
) {
  final separator = time.indexOf(':');

  if (separator != -1) {
    final hour = int.tryParse(time.substring(0, separator));
    final minute = int.tryParse(time.substring(separator + 1, separator + 3));

    if (hour != null && minute != null) {
      return right(TimeOfDay(hour: hour, minute: minute));
    } else {
      return left(const ValueFailure.invalidTime());
    }
  } else {
    return left(const ValueFailure.invalidTime());
  }
}

Either<ValueFailure<double>, double> validatePositionValue(
  double position,
) {
  if (position != 0) {
    return right(position);
  } else {
    return left(ValueFailure.invalidPositionValue(failedValue: position));
  }
}

Either<ValueFailure<String>, String> validateCardBrand(String brand) {
  if (brand.isEmpty) {
    return left(const ValueFailure.empty());
  } else if (brand != "visa" || brand != "mastercard") {
    return left(
      ValueFailure.invalidCardBrand(failedValue: brand),
    );
  } else {
    return right(brand);
  }
}

Either<ValueFailure<int>, int> validateExpiryMonth(
  int expiryMonth,
) {
  if (expiryMonth < 1 || expiryMonth > 12) {
    return left(ValueFailure.invalidExpiryMonth(failedValue: expiryMonth));
  } else {
    return right(expiryMonth);
  }
}

Either<ValueFailure<int>, int> validateExpiryYear(
  int expiryYear,
) {
  final today = DateTime.now();

  if (expiryYear < today.year) {
    return left(ValueFailure.invalidExpiryYear(failedValue: expiryYear));
  } else {
    return right(expiryYear);
  }
}

Either<ValueFailure<String>, String> validateLastFourDigits(
  String lastFourDigits,
) {
  if (lastFourDigits.isEmpty) {
    return left(const ValueFailure.empty());
  } else if (lastFourDigits.length != 4) {
    return left(
      ValueFailure.invalidLastFourDigits(failedValue: lastFourDigits),
    );
  } else {
    return right(lastFourDigits);
  }
}

Either<ValueFailure<double>, double> validateAccountBalance(
  double accountBalance,
) {
  if (accountBalance < 0) {
    return left(
      ValueFailure.invalidAccountBalance(
        failedValue: accountBalance,
      ),
    );
  } else {
    return right(accountBalance);
  }
}
