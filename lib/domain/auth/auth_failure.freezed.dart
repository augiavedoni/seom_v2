// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelledByUserCopyWith<$Res> {
  factory _$$CancelledByUserCopyWith(
          _$CancelledByUser value, $Res Function(_$CancelledByUser) then) =
      __$$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CancelledByUser>
    implements _$$CancelledByUserCopyWith<$Res> {
  __$$CancelledByUserCopyWithImpl(
      _$CancelledByUser _value, $Res Function(_$CancelledByUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlreadyInUse>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$CuilAlreadyInUseCopyWith<$Res> {
  factory _$$CuilAlreadyInUseCopyWith(
          _$CuilAlreadyInUse value, $Res Function(_$CuilAlreadyInUse) then) =
      __$$CuilAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CuilAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CuilAlreadyInUse>
    implements _$$CuilAlreadyInUseCopyWith<$Res> {
  __$$CuilAlreadyInUseCopyWithImpl(
      _$CuilAlreadyInUse _value, $Res Function(_$CuilAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CuilAlreadyInUse implements CuilAlreadyInUse {
  const _$CuilAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.cuilAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CuilAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return cuilAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return cuilAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cuilAlreadyInUse != null) {
      return cuilAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return cuilAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return cuilAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (cuilAlreadyInUse != null) {
      return cuilAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class CuilAlreadyInUse implements AuthFailure {
  const factory CuilAlreadyInUse() = _$CuilAlreadyInUse;
}

/// @nodoc
abstract class _$$CitizenNotFoundCopyWith<$Res> {
  factory _$$CitizenNotFoundCopyWith(
          _$CitizenNotFound value, $Res Function(_$CitizenNotFound) then) =
      __$$CitizenNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CitizenNotFoundCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CitizenNotFound>
    implements _$$CitizenNotFoundCopyWith<$Res> {
  __$$CitizenNotFoundCopyWithImpl(
      _$CitizenNotFound _value, $Res Function(_$CitizenNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CitizenNotFound implements CitizenNotFound {
  const _$CitizenNotFound();

  @override
  String toString() {
    return 'AuthFailure.citizenNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CitizenNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return citizenNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return citizenNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (citizenNotFound != null) {
      return citizenNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return citizenNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return citizenNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (citizenNotFound != null) {
      return citizenNotFound(this);
    }
    return orElse();
  }
}

abstract class CitizenNotFound implements AuthFailure {
  const factory CitizenNotFound() = _$CitizenNotFound;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationCopyWith(
          _$InvalidEmailAndPasswordCombination value,
          $Res Function(_$InvalidEmailAndPasswordCombination) then) =
      __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res,
        _$InvalidEmailAndPasswordCombination>
    implements _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationCopyWithImpl(
      _$InvalidEmailAndPasswordCombination _value,
      $Res Function(_$InvalidEmailAndPasswordCombination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() cuilAlreadyInUse,
    required TResult Function() citizenNotFound,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? cuilAlreadyInUse,
    TResult? Function()? citizenNotFound,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? cuilAlreadyInUse,
    TResult Function()? citizenNotFound,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(CuilAlreadyInUse value) cuilAlreadyInUse,
    required TResult Function(CitizenNotFound value) citizenNotFound,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelledByUser value)? cancelledByUser,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult? Function(CitizenNotFound value)? citizenNotFound,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(CuilAlreadyInUse value)? cuilAlreadyInUse,
    TResult Function(CitizenNotFound value)? citizenNotFound,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}
