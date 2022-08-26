import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidCuil({
    required T failedValue,
  }) = InvaliCuil<T>;

  const factory ValueFailure.emptyCuil() = EmptyCuil<T>;

  const factory ValueFailure.invalidName({
    required T failedValue,
  }) = InvalidName<T>;

  const factory ValueFailure.emptyName() = EmptyName<T>;

  const factory ValueFailure.shortName({
    required T failedValue,
  }) = ShortName<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.emptyEmail() = EmptyEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.emptyPassword() = EmptyPassword<T>;

  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty() = Empty<T>;
}
