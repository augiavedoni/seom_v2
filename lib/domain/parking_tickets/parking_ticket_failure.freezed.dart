// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_ticket_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingTicketFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketUnexpectedFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketUnexpectedFailure value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketUnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingTicketFailureCopyWith<$Res> {
  factory $ParkingTicketFailureCopyWith(ParkingTicketFailure value,
          $Res Function(ParkingTicketFailure) then) =
      _$ParkingTicketFailureCopyWithImpl<$Res, ParkingTicketFailure>;
}

/// @nodoc
class _$ParkingTicketFailureCopyWithImpl<$Res,
        $Val extends ParkingTicketFailure>
    implements $ParkingTicketFailureCopyWith<$Res> {
  _$ParkingTicketFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParkingTicketUnexpectedFailureCopyWith<$Res> {
  factory _$$ParkingTicketUnexpectedFailureCopyWith(
          _$ParkingTicketUnexpectedFailure value,
          $Res Function(_$ParkingTicketUnexpectedFailure) then) =
      __$$ParkingTicketUnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParkingTicketUnexpectedFailureCopyWithImpl<$Res>
    extends _$ParkingTicketFailureCopyWithImpl<$Res,
        _$ParkingTicketUnexpectedFailure>
    implements _$$ParkingTicketUnexpectedFailureCopyWith<$Res> {
  __$$ParkingTicketUnexpectedFailureCopyWithImpl(
      _$ParkingTicketUnexpectedFailure _value,
      $Res Function(_$ParkingTicketUnexpectedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParkingTicketUnexpectedFailure
    implements ParkingTicketUnexpectedFailure {
  const _$ParkingTicketUnexpectedFailure();

  @override
  String toString() {
    return 'ParkingTicketFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingTicketUnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
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
    required TResult Function(ParkingTicketUnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketUnexpectedFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketUnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class ParkingTicketUnexpectedFailure implements ParkingTicketFailure {
  const factory ParkingTicketUnexpectedFailure() =
      _$ParkingTicketUnexpectedFailure;
}
