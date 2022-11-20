// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodUnexpectedFailure value) unexpected,
    required TResult Function(PaymentMethodNotFoundFailure value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(PaymentMethodNotFoundFailure value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(PaymentMethodNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodFailureCopyWith<$Res> {
  factory $PaymentMethodFailureCopyWith(PaymentMethodFailure value,
          $Res Function(PaymentMethodFailure) then) =
      _$PaymentMethodFailureCopyWithImpl<$Res, PaymentMethodFailure>;
}

/// @nodoc
class _$PaymentMethodFailureCopyWithImpl<$Res,
        $Val extends PaymentMethodFailure>
    implements $PaymentMethodFailureCopyWith<$Res> {
  _$PaymentMethodFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentMethodUnexpectedFailureCopyWith<$Res> {
  factory _$$PaymentMethodUnexpectedFailureCopyWith(
          _$PaymentMethodUnexpectedFailure value,
          $Res Function(_$PaymentMethodUnexpectedFailure) then) =
      __$$PaymentMethodUnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodUnexpectedFailureCopyWithImpl<$Res>
    extends _$PaymentMethodFailureCopyWithImpl<$Res,
        _$PaymentMethodUnexpectedFailure>
    implements _$$PaymentMethodUnexpectedFailureCopyWith<$Res> {
  __$$PaymentMethodUnexpectedFailureCopyWithImpl(
      _$PaymentMethodUnexpectedFailure _value,
      $Res Function(_$PaymentMethodUnexpectedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentMethodUnexpectedFailure
    implements PaymentMethodUnexpectedFailure {
  const _$PaymentMethodUnexpectedFailure();

  @override
  String toString() {
    return 'PaymentMethodFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodUnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodUnexpectedFailure value) unexpected,
    required TResult Function(PaymentMethodNotFoundFailure value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(PaymentMethodNotFoundFailure value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(PaymentMethodNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodUnexpectedFailure implements PaymentMethodFailure {
  const factory PaymentMethodUnexpectedFailure() =
      _$PaymentMethodUnexpectedFailure;
}

/// @nodoc
abstract class _$$PaymentMethodNotFoundFailureCopyWith<$Res> {
  factory _$$PaymentMethodNotFoundFailureCopyWith(
          _$PaymentMethodNotFoundFailure value,
          $Res Function(_$PaymentMethodNotFoundFailure) then) =
      __$$PaymentMethodNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodNotFoundFailureCopyWithImpl<$Res>
    extends _$PaymentMethodFailureCopyWithImpl<$Res,
        _$PaymentMethodNotFoundFailure>
    implements _$$PaymentMethodNotFoundFailureCopyWith<$Res> {
  __$$PaymentMethodNotFoundFailureCopyWithImpl(
      _$PaymentMethodNotFoundFailure _value,
      $Res Function(_$PaymentMethodNotFoundFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentMethodNotFoundFailure implements PaymentMethodNotFoundFailure {
  const _$PaymentMethodNotFoundFailure();

  @override
  String toString() {
    return 'PaymentMethodFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodUnexpectedFailure value) unexpected,
    required TResult Function(PaymentMethodNotFoundFailure value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(PaymentMethodNotFoundFailure value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(PaymentMethodNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodNotFoundFailure implements PaymentMethodFailure {
  const factory PaymentMethodNotFoundFailure() = _$PaymentMethodNotFoundFailure;
}
