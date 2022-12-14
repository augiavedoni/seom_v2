// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Vehicle {
  int get id => throw _privateConstructorUsedError;
  Make get make => throw _privateConstructorUsedError;
  Model get model => throw _privateConstructorUsedError;
  Year get year => throw _privateConstructorUsedError;
  LicensePlate get licensePlate => throw _privateConstructorUsedError;
  VehicleType get vehicleType => throw _privateConstructorUsedError;
  bool get parked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {int id,
      Make make,
      Model model,
      Year year,
      LicensePlate licensePlate,
      VehicleType vehicleType,
      bool parked});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? make = null,
    Object? model = null,
    Object? year = null,
    Object? licensePlate = null,
    Object? vehicleType = null,
    Object? parked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as Make,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Model,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as Year,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as LicensePlate,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      parked: null == parked
          ? _value.parked
          : parked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$_VehicleCopyWith(
          _$_Vehicle value, $Res Function(_$_Vehicle) then) =
      __$$_VehicleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Make make,
      Model model,
      Year year,
      LicensePlate licensePlate,
      VehicleType vehicleType,
      bool parked});
}

/// @nodoc
class __$$_VehicleCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$_Vehicle>
    implements _$$_VehicleCopyWith<$Res> {
  __$$_VehicleCopyWithImpl(_$_Vehicle _value, $Res Function(_$_Vehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? make = null,
    Object? model = null,
    Object? year = null,
    Object? licensePlate = null,
    Object? vehicleType = null,
    Object? parked = null,
  }) {
    return _then(_$_Vehicle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as Make,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Model,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as Year,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as LicensePlate,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as VehicleType,
      parked: null == parked
          ? _value.parked
          : parked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Vehicle extends _Vehicle {
  const _$_Vehicle(
      {required this.id,
      required this.make,
      required this.model,
      required this.year,
      required this.licensePlate,
      required this.vehicleType,
      required this.parked})
      : super._();

  @override
  final int id;
  @override
  final Make make;
  @override
  final Model model;
  @override
  final Year year;
  @override
  final LicensePlate licensePlate;
  @override
  final VehicleType vehicleType;
  @override
  final bool parked;

  @override
  String toString() {
    return 'Vehicle(id: $id, make: $make, model: $model, year: $year, licensePlate: $licensePlate, vehicleType: $vehicleType, parked: $parked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vehicle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.parked, parked) || other.parked == parked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, make, model, year, licensePlate, vehicleType, parked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      __$$_VehicleCopyWithImpl<_$_Vehicle>(this, _$identity);
}

abstract class _Vehicle extends Vehicle {
  const factory _Vehicle(
      {required final int id,
      required final Make make,
      required final Model model,
      required final Year year,
      required final LicensePlate licensePlate,
      required final VehicleType vehicleType,
      required final bool parked}) = _$_Vehicle;
  const _Vehicle._() : super._();

  @override
  int get id;
  @override
  Make get make;
  @override
  Model get model;
  @override
  Year get year;
  @override
  LicensePlate get licensePlate;
  @override
  VehicleType get vehicleType;
  @override
  bool get parked;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
