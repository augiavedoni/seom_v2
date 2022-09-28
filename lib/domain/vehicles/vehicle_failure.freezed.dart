// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() vehicleNotFound,
    required TResult Function() alreadyParked,
    required TResult Function() parkingTicketNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_VehicleNotFound value) vehicleNotFound,
    required TResult Function(_AlreadyParked value) alreadyParked,
    required TResult Function(_ParkingTicketNotFound value)
        parkingTicketNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleFailureCopyWith<$Res> {
  factory $VehicleFailureCopyWith(
          VehicleFailure value, $Res Function(VehicleFailure) then) =
      _$VehicleFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$VehicleFailureCopyWithImpl<$Res>
    implements $VehicleFailureCopyWith<$Res> {
  _$VehicleFailureCopyWithImpl(this._value, this._then);

  final VehicleFailure _value;
  // ignore: unused_field
  final $Res Function(VehicleFailure) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, (v) => _then(v as _$_Unexpected));

  @override
  _$_Unexpected get _value => super._value as _$_Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'VehicleFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() vehicleNotFound,
    required TResult Function() alreadyParked,
    required TResult Function() parkingTicketNotFound,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
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
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_VehicleNotFound value) vehicleNotFound,
    required TResult Function(_AlreadyParked value) alreadyParked,
    required TResult Function(_ParkingTicketNotFound value)
        parkingTicketNotFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements VehicleFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_VehicleNotFoundCopyWith<$Res> {
  factory _$$_VehicleNotFoundCopyWith(
          _$_VehicleNotFound value, $Res Function(_$_VehicleNotFound) then) =
      __$$_VehicleNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VehicleNotFoundCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res>
    implements _$$_VehicleNotFoundCopyWith<$Res> {
  __$$_VehicleNotFoundCopyWithImpl(
      _$_VehicleNotFound _value, $Res Function(_$_VehicleNotFound) _then)
      : super(_value, (v) => _then(v as _$_VehicleNotFound));

  @override
  _$_VehicleNotFound get _value => super._value as _$_VehicleNotFound;
}

/// @nodoc

class _$_VehicleNotFound implements _VehicleNotFound {
  const _$_VehicleNotFound();

  @override
  String toString() {
    return 'VehicleFailure.vehicleNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VehicleNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() vehicleNotFound,
    required TResult Function() alreadyParked,
    required TResult Function() parkingTicketNotFound,
  }) {
    return vehicleNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
  }) {
    return vehicleNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (vehicleNotFound != null) {
      return vehicleNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_VehicleNotFound value) vehicleNotFound,
    required TResult Function(_AlreadyParked value) alreadyParked,
    required TResult Function(_ParkingTicketNotFound value)
        parkingTicketNotFound,
  }) {
    return vehicleNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
  }) {
    return vehicleNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (vehicleNotFound != null) {
      return vehicleNotFound(this);
    }
    return orElse();
  }
}

abstract class _VehicleNotFound implements VehicleFailure {
  const factory _VehicleNotFound() = _$_VehicleNotFound;
}

/// @nodoc
abstract class _$$_AlreadyParkedCopyWith<$Res> {
  factory _$$_AlreadyParkedCopyWith(
          _$_AlreadyParked value, $Res Function(_$_AlreadyParked) then) =
      __$$_AlreadyParkedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlreadyParkedCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res>
    implements _$$_AlreadyParkedCopyWith<$Res> {
  __$$_AlreadyParkedCopyWithImpl(
      _$_AlreadyParked _value, $Res Function(_$_AlreadyParked) _then)
      : super(_value, (v) => _then(v as _$_AlreadyParked));

  @override
  _$_AlreadyParked get _value => super._value as _$_AlreadyParked;
}

/// @nodoc

class _$_AlreadyParked implements _AlreadyParked {
  const _$_AlreadyParked();

  @override
  String toString() {
    return 'VehicleFailure.alreadyParked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlreadyParked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() vehicleNotFound,
    required TResult Function() alreadyParked,
    required TResult Function() parkingTicketNotFound,
  }) {
    return alreadyParked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
  }) {
    return alreadyParked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (alreadyParked != null) {
      return alreadyParked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_VehicleNotFound value) vehicleNotFound,
    required TResult Function(_AlreadyParked value) alreadyParked,
    required TResult Function(_ParkingTicketNotFound value)
        parkingTicketNotFound,
  }) {
    return alreadyParked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
  }) {
    return alreadyParked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (alreadyParked != null) {
      return alreadyParked(this);
    }
    return orElse();
  }
}

abstract class _AlreadyParked implements VehicleFailure {
  const factory _AlreadyParked() = _$_AlreadyParked;
}

/// @nodoc
abstract class _$$_ParkingTicketNotFoundCopyWith<$Res> {
  factory _$$_ParkingTicketNotFoundCopyWith(_$_ParkingTicketNotFound value,
          $Res Function(_$_ParkingTicketNotFound) then) =
      __$$_ParkingTicketNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ParkingTicketNotFoundCopyWithImpl<$Res>
    extends _$VehicleFailureCopyWithImpl<$Res>
    implements _$$_ParkingTicketNotFoundCopyWith<$Res> {
  __$$_ParkingTicketNotFoundCopyWithImpl(_$_ParkingTicketNotFound _value,
      $Res Function(_$_ParkingTicketNotFound) _then)
      : super(_value, (v) => _then(v as _$_ParkingTicketNotFound));

  @override
  _$_ParkingTicketNotFound get _value =>
      super._value as _$_ParkingTicketNotFound;
}

/// @nodoc

class _$_ParkingTicketNotFound implements _ParkingTicketNotFound {
  const _$_ParkingTicketNotFound();

  @override
  String toString() {
    return 'VehicleFailure.parkingTicketNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ParkingTicketNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() vehicleNotFound,
    required TResult Function() alreadyParked,
    required TResult Function() parkingTicketNotFound,
  }) {
    return parkingTicketNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
  }) {
    return parkingTicketNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? vehicleNotFound,
    TResult Function()? alreadyParked,
    TResult Function()? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (parkingTicketNotFound != null) {
      return parkingTicketNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_VehicleNotFound value) vehicleNotFound,
    required TResult Function(_AlreadyParked value) alreadyParked,
    required TResult Function(_ParkingTicketNotFound value)
        parkingTicketNotFound,
  }) {
    return parkingTicketNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
  }) {
    return parkingTicketNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_VehicleNotFound value)? vehicleNotFound,
    TResult Function(_AlreadyParked value)? alreadyParked,
    TResult Function(_ParkingTicketNotFound value)? parkingTicketNotFound,
    required TResult orElse(),
  }) {
    if (parkingTicketNotFound != null) {
      return parkingTicketNotFound(this);
    }
    return orElse();
  }
}

abstract class _ParkingTicketNotFound implements VehicleFailure {
  const factory _ParkingTicketNotFound() = _$_ParkingTicketNotFound;
}
