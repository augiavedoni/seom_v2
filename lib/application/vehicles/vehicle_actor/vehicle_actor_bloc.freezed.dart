// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Vehicle> initialVehicleOption) initialized,
    required TResult Function(Position? position) parked,
    required TResult Function() unparked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult? Function(Position? position)? parked,
    TResult? Function()? unparked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult Function(Position? position)? parked,
    TResult Function()? unparked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Parked value) parked,
    required TResult Function(_Unparked value) unparked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Parked value)? parked,
    TResult? Function(_Unparked value)? unparked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Parked value)? parked,
    TResult Function(_Unparked value)? unparked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleActorEventCopyWith<$Res> {
  factory $VehicleActorEventCopyWith(
          VehicleActorEvent value, $Res Function(VehicleActorEvent) then) =
      _$VehicleActorEventCopyWithImpl<$Res, VehicleActorEvent>;
}

/// @nodoc
class _$VehicleActorEventCopyWithImpl<$Res, $Val extends VehicleActorEvent>
    implements $VehicleActorEventCopyWith<$Res> {
  _$VehicleActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Vehicle> initialVehicleOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$VehicleActorEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialVehicleOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialVehicleOption
          ? _value.initialVehicleOption
          : initialVehicleOption // ignore: cast_nullable_to_non_nullable
              as Option<Vehicle>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialVehicleOption);

  @override
  final Option<Vehicle> initialVehicleOption;

  @override
  String toString() {
    return 'VehicleActorEvent.initialized(initialVehicleOption: $initialVehicleOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialVehicleOption, initialVehicleOption) ||
                other.initialVehicleOption == initialVehicleOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialVehicleOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Vehicle> initialVehicleOption) initialized,
    required TResult Function(Position? position) parked,
    required TResult Function() unparked,
  }) {
    return initialized(initialVehicleOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult? Function(Position? position)? parked,
    TResult? Function()? unparked,
  }) {
    return initialized?.call(initialVehicleOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult Function(Position? position)? parked,
    TResult Function()? unparked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialVehicleOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Parked value) parked,
    required TResult Function(_Unparked value) unparked,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Parked value)? parked,
    TResult? Function(_Unparked value)? unparked,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Parked value)? parked,
    TResult Function(_Unparked value)? unparked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements VehicleActorEvent {
  const factory _Initialized(final Option<Vehicle> initialVehicleOption) =
      _$_Initialized;

  Option<Vehicle> get initialVehicleOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ParkedCopyWith<$Res> {
  factory _$$_ParkedCopyWith(_$_Parked value, $Res Function(_$_Parked) then) =
      __$$_ParkedCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? position});
}

/// @nodoc
class __$$_ParkedCopyWithImpl<$Res>
    extends _$VehicleActorEventCopyWithImpl<$Res, _$_Parked>
    implements _$$_ParkedCopyWith<$Res> {
  __$$_ParkedCopyWithImpl(_$_Parked _value, $Res Function(_$_Parked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$_Parked(
      freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$_Parked implements _Parked {
  const _$_Parked(this.position);

  @override
  final Position? position;

  @override
  String toString() {
    return 'VehicleActorEvent.parked(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parked &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkedCopyWith<_$_Parked> get copyWith =>
      __$$_ParkedCopyWithImpl<_$_Parked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Vehicle> initialVehicleOption) initialized,
    required TResult Function(Position? position) parked,
    required TResult Function() unparked,
  }) {
    return parked(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult? Function(Position? position)? parked,
    TResult? Function()? unparked,
  }) {
    return parked?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult Function(Position? position)? parked,
    TResult Function()? unparked,
    required TResult orElse(),
  }) {
    if (parked != null) {
      return parked(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Parked value) parked,
    required TResult Function(_Unparked value) unparked,
  }) {
    return parked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Parked value)? parked,
    TResult? Function(_Unparked value)? unparked,
  }) {
    return parked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Parked value)? parked,
    TResult Function(_Unparked value)? unparked,
    required TResult orElse(),
  }) {
    if (parked != null) {
      return parked(this);
    }
    return orElse();
  }
}

abstract class _Parked implements VehicleActorEvent {
  const factory _Parked(final Position? position) = _$_Parked;

  Position? get position;
  @JsonKey(ignore: true)
  _$$_ParkedCopyWith<_$_Parked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnparkedCopyWith<$Res> {
  factory _$$_UnparkedCopyWith(
          _$_Unparked value, $Res Function(_$_Unparked) then) =
      __$$_UnparkedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnparkedCopyWithImpl<$Res>
    extends _$VehicleActorEventCopyWithImpl<$Res, _$_Unparked>
    implements _$$_UnparkedCopyWith<$Res> {
  __$$_UnparkedCopyWithImpl(
      _$_Unparked _value, $Res Function(_$_Unparked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unparked implements _Unparked {
  const _$_Unparked();

  @override
  String toString() {
    return 'VehicleActorEvent.unparked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unparked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Vehicle> initialVehicleOption) initialized,
    required TResult Function(Position? position) parked,
    required TResult Function() unparked,
  }) {
    return unparked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult? Function(Position? position)? parked,
    TResult? Function()? unparked,
  }) {
    return unparked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Vehicle> initialVehicleOption)? initialized,
    TResult Function(Position? position)? parked,
    TResult Function()? unparked,
    required TResult orElse(),
  }) {
    if (unparked != null) {
      return unparked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Parked value) parked,
    required TResult Function(_Unparked value) unparked,
  }) {
    return unparked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Parked value)? parked,
    TResult? Function(_Unparked value)? unparked,
  }) {
    return unparked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Parked value)? parked,
    TResult Function(_Unparked value)? unparked,
    required TResult orElse(),
  }) {
    if (unparked != null) {
      return unparked(this);
    }
    return orElse();
  }
}

abstract class _Unparked implements VehicleActorEvent {
  const factory _Unparked() = _$_Unparked;
}

/// @nodoc
mixin _$VehicleActorState {
  Vehicle get vehicle => throw _privateConstructorUsedError;
  bool get isChangingParkingStatus => throw _privateConstructorUsedError;
  Option<Either<VehicleFailure, Vehicle>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleActorStateCopyWith<VehicleActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleActorStateCopyWith<$Res> {
  factory $VehicleActorStateCopyWith(
          VehicleActorState value, $Res Function(VehicleActorState) then) =
      _$VehicleActorStateCopyWithImpl<$Res, VehicleActorState>;
  @useResult
  $Res call(
      {Vehicle vehicle,
      bool isChangingParkingStatus,
      Option<Either<VehicleFailure, Vehicle>> saveFailureOrSucessOption});

  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$VehicleActorStateCopyWithImpl<$Res, $Val extends VehicleActorState>
    implements $VehicleActorStateCopyWith<$Res> {
  _$VehicleActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
    Object? isChangingParkingStatus = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      isChangingParkingStatus: null == isChangingParkingStatus
          ? _value.isChangingParkingStatus
          : isChangingParkingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<VehicleFailure, Vehicle>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $VehicleActorStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Vehicle vehicle,
      bool isChangingParkingStatus,
      Option<Either<VehicleFailure, Vehicle>> saveFailureOrSucessOption});

  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VehicleActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
    Object? isChangingParkingStatus = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_Initial(
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      isChangingParkingStatus: null == isChangingParkingStatus
          ? _value.isChangingParkingStatus
          : isChangingParkingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<VehicleFailure, Vehicle>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.vehicle,
      required this.isChangingParkingStatus,
      required this.saveFailureOrSucessOption});

  @override
  final Vehicle vehicle;
  @override
  final bool isChangingParkingStatus;
  @override
  final Option<Either<VehicleFailure, Vehicle>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'VehicleActorState(vehicle: $vehicle, isChangingParkingStatus: $isChangingParkingStatus, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(
                    other.isChangingParkingStatus, isChangingParkingStatus) ||
                other.isChangingParkingStatus == isChangingParkingStatus) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, vehicle, isChangingParkingStatus, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements VehicleActorState {
  const factory _Initial(
      {required final Vehicle vehicle,
      required final bool isChangingParkingStatus,
      required final Option<Either<VehicleFailure, Vehicle>>
          saveFailureOrSucessOption}) = _$_Initial;

  @override
  Vehicle get vehicle;
  @override
  bool get isChangingParkingStatus;
  @override
  Option<Either<VehicleFailure, Vehicle>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
