// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_processor_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentProcessorFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() cardDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? cardDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? cardDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodUnexpectedFailure value) unexpected,
    required TResult Function(CardDeclinedFailure value) cardDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(CardDeclinedFailure value)? cardDeclined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(CardDeclinedFailure value)? cardDeclined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentProcessorFailureCopyWith<$Res> {
  factory $PaymentProcessorFailureCopyWith(PaymentProcessorFailure value,
          $Res Function(PaymentProcessorFailure) then) =
      _$PaymentProcessorFailureCopyWithImpl<$Res, PaymentProcessorFailure>;
}

/// @nodoc
class _$PaymentProcessorFailureCopyWithImpl<$Res,
        $Val extends PaymentProcessorFailure>
    implements $PaymentProcessorFailureCopyWith<$Res> {
  _$PaymentProcessorFailureCopyWithImpl(this._value, this._then);

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
    extends _$PaymentProcessorFailureCopyWithImpl<$Res,
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
    return 'PaymentProcessorFailure.unexpected()';
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
    required TResult Function() cardDeclined,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? cardDeclined,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? cardDeclined,
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
    required TResult Function(CardDeclinedFailure value) cardDeclined,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(CardDeclinedFailure value)? cardDeclined,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(CardDeclinedFailure value)? cardDeclined,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodUnexpectedFailure
    implements PaymentProcessorFailure {
  const factory PaymentMethodUnexpectedFailure() =
      _$PaymentMethodUnexpectedFailure;
}

/// @nodoc
abstract class _$$CardDeclinedFailureCopyWith<$Res> {
  factory _$$CardDeclinedFailureCopyWith(_$CardDeclinedFailure value,
          $Res Function(_$CardDeclinedFailure) then) =
      __$$CardDeclinedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardDeclinedFailureCopyWithImpl<$Res>
    extends _$PaymentProcessorFailureCopyWithImpl<$Res, _$CardDeclinedFailure>
    implements _$$CardDeclinedFailureCopyWith<$Res> {
  __$$CardDeclinedFailureCopyWithImpl(
      _$CardDeclinedFailure _value, $Res Function(_$CardDeclinedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardDeclinedFailure implements CardDeclinedFailure {
  const _$CardDeclinedFailure();

  @override
  String toString() {
    return 'PaymentProcessorFailure.cardDeclined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardDeclinedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() cardDeclined,
  }) {
    return cardDeclined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? cardDeclined,
  }) {
    return cardDeclined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? cardDeclined,
    required TResult orElse(),
  }) {
    if (cardDeclined != null) {
      return cardDeclined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodUnexpectedFailure value) unexpected,
    required TResult Function(CardDeclinedFailure value) cardDeclined,
  }) {
    return cardDeclined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult? Function(CardDeclinedFailure value)? cardDeclined,
  }) {
    return cardDeclined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodUnexpectedFailure value)? unexpected,
    TResult Function(CardDeclinedFailure value)? cardDeclined,
    required TResult orElse(),
  }) {
    if (cardDeclined != null) {
      return cardDeclined(this);
    }
    return orElse();
  }
}

abstract class CardDeclinedFailure implements PaymentProcessorFailure {
  const factory CardDeclinedFailure() = _$CardDeclinedFailure;
}
