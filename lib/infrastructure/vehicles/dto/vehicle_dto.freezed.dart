// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleDto _$VehicleDtoFromJson(Map<String, dynamic> json) {
  return _VehicleDTO.fromJson(json);
}

/// @nodoc
mixin _$VehicleDto {
  int get id => throw _privateConstructorUsedError;
  String get make => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get vehicleType => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  bool get parked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDtoCopyWith<VehicleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDtoCopyWith<$Res> {
  factory $VehicleDtoCopyWith(
          VehicleDto value, $Res Function(VehicleDto) then) =
      _$VehicleDtoCopyWithImpl<$Res, VehicleDto>;
  @useResult
  $Res call(
      {int id,
      String make,
      String model,
      int year,
      String vehicleType,
      String licensePlate,
      bool parked});
}

/// @nodoc
class _$VehicleDtoCopyWithImpl<$Res, $Val extends VehicleDto>
    implements $VehicleDtoCopyWith<$Res> {
  _$VehicleDtoCopyWithImpl(this._value, this._then);

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
    Object? vehicleType = null,
    Object? licensePlate = null,
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
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      parked: null == parked
          ? _value.parked
          : parked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleDTOCopyWith<$Res>
    implements $VehicleDtoCopyWith<$Res> {
  factory _$$_VehicleDTOCopyWith(
          _$_VehicleDTO value, $Res Function(_$_VehicleDTO) then) =
      __$$_VehicleDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String make,
      String model,
      int year,
      String vehicleType,
      String licensePlate,
      bool parked});
}

/// @nodoc
class __$$_VehicleDTOCopyWithImpl<$Res>
    extends _$VehicleDtoCopyWithImpl<$Res, _$_VehicleDTO>
    implements _$$_VehicleDTOCopyWith<$Res> {
  __$$_VehicleDTOCopyWithImpl(
      _$_VehicleDTO _value, $Res Function(_$_VehicleDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? make = null,
    Object? model = null,
    Object? year = null,
    Object? vehicleType = null,
    Object? licensePlate = null,
    Object? parked = null,
  }) {
    return _then(_$_VehicleDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      make: null == make
          ? _value.make
          : make // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      vehicleType: null == vehicleType
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      parked: null == parked
          ? _value.parked
          : parked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VehicleDTO extends _VehicleDTO {
  const _$_VehicleDTO(
      {required this.id,
      required this.make,
      required this.model,
      required this.year,
      required this.vehicleType,
      required this.licensePlate,
      required this.parked})
      : super._();

  factory _$_VehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleDTOFromJson(json);

  @override
  final int id;
  @override
  final String make;
  @override
  final String model;
  @override
  final int year;
  @override
  final String vehicleType;
  @override
  final String licensePlate;
  @override
  final bool parked;

  @override
  String toString() {
    return 'VehicleDto(id: $id, make: $make, model: $model, year: $year, vehicleType: $vehicleType, licensePlate: $licensePlate, parked: $parked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.make, make) || other.make == make) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.parked, parked) || other.parked == parked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, make, model, year, vehicleType, licensePlate, parked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleDTOCopyWith<_$_VehicleDTO> get copyWith =>
      __$$_VehicleDTOCopyWithImpl<_$_VehicleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleDTOToJson(
      this,
    );
  }
}

abstract class _VehicleDTO extends VehicleDto {
  const factory _VehicleDTO(
      {required final int id,
      required final String make,
      required final String model,
      required final int year,
      required final String vehicleType,
      required final String licensePlate,
      required final bool parked}) = _$_VehicleDTO;
  const _VehicleDTO._() : super._();

  factory _VehicleDTO.fromJson(Map<String, dynamic> json) =
      _$_VehicleDTO.fromJson;

  @override
  int get id;
  @override
  String get make;
  @override
  String get model;
  @override
  int get year;
  @override
  String get vehicleType;
  @override
  String get licensePlate;
  @override
  bool get parked;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleDTOCopyWith<_$_VehicleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
