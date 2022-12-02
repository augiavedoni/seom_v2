// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParkingTicketDto _$ParkingTicketDtoFromJson(Map<String, dynamic> json) {
  return _ParkingTicketDto.fromJson(json);
}

/// @nodoc
mixin _$ParkingTicketDto {
  int get id => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get parkingDate => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get userCuil => throw _privateConstructorUsedError;
  ReceiptDto get receipt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingTicketDtoCopyWith<ParkingTicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingTicketDtoCopyWith<$Res> {
  factory $ParkingTicketDtoCopyWith(
          ParkingTicketDto value, $Res Function(ParkingTicketDto) then) =
      _$ParkingTicketDtoCopyWithImpl<$Res, ParkingTicketDto>;
  @useResult
  $Res call(
      {int id,
      String licensePlate,
      @JsonKey(name: "date") String parkingDate,
      String startTime,
      String endTime,
      double latitude,
      double longitude,
      String userCuil,
      ReceiptDto receipt});

  $ReceiptDtoCopyWith<$Res> get receipt;
}

/// @nodoc
class _$ParkingTicketDtoCopyWithImpl<$Res, $Val extends ParkingTicketDto>
    implements $ParkingTicketDtoCopyWith<$Res> {
  _$ParkingTicketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? parkingDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userCuil = null,
    Object? receipt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      parkingDate: null == parkingDate
          ? _value.parkingDate
          : parkingDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      userCuil: null == userCuil
          ? _value.userCuil
          : userCuil // ignore: cast_nullable_to_non_nullable
              as String,
      receipt: null == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as ReceiptDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiptDtoCopyWith<$Res> get receipt {
    return $ReceiptDtoCopyWith<$Res>(_value.receipt, (value) {
      return _then(_value.copyWith(receipt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParkingTicketDtoCopyWith<$Res>
    implements $ParkingTicketDtoCopyWith<$Res> {
  factory _$$_ParkingTicketDtoCopyWith(
          _$_ParkingTicketDto value, $Res Function(_$_ParkingTicketDto) then) =
      __$$_ParkingTicketDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String licensePlate,
      @JsonKey(name: "date") String parkingDate,
      String startTime,
      String endTime,
      double latitude,
      double longitude,
      String userCuil,
      ReceiptDto receipt});

  @override
  $ReceiptDtoCopyWith<$Res> get receipt;
}

/// @nodoc
class __$$_ParkingTicketDtoCopyWithImpl<$Res>
    extends _$ParkingTicketDtoCopyWithImpl<$Res, _$_ParkingTicketDto>
    implements _$$_ParkingTicketDtoCopyWith<$Res> {
  __$$_ParkingTicketDtoCopyWithImpl(
      _$_ParkingTicketDto _value, $Res Function(_$_ParkingTicketDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? parkingDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userCuil = null,
    Object? receipt = null,
  }) {
    return _then(_$_ParkingTicketDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      parkingDate: null == parkingDate
          ? _value.parkingDate
          : parkingDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      userCuil: null == userCuil
          ? _value.userCuil
          : userCuil // ignore: cast_nullable_to_non_nullable
              as String,
      receipt: null == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as ReceiptDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ParkingTicketDto extends _ParkingTicketDto {
  const _$_ParkingTicketDto(
      {required this.id,
      required this.licensePlate,
      @JsonKey(name: "date") required this.parkingDate,
      required this.startTime,
      required this.endTime,
      required this.latitude,
      required this.longitude,
      required this.userCuil,
      required this.receipt})
      : super._();

  factory _$_ParkingTicketDto.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingTicketDtoFromJson(json);

  @override
  final int id;
  @override
  final String licensePlate;
  @override
  @JsonKey(name: "date")
  final String parkingDate;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String userCuil;
  @override
  final ReceiptDto receipt;

  @override
  String toString() {
    return 'ParkingTicketDto(id: $id, licensePlate: $licensePlate, parkingDate: $parkingDate, startTime: $startTime, endTime: $endTime, latitude: $latitude, longitude: $longitude, userCuil: $userCuil, receipt: $receipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingTicketDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.parkingDate, parkingDate) ||
                other.parkingDate == parkingDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.userCuil, userCuil) ||
                other.userCuil == userCuil) &&
            (identical(other.receipt, receipt) || other.receipt == receipt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, licensePlate, parkingDate,
      startTime, endTime, latitude, longitude, userCuil, receipt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingTicketDtoCopyWith<_$_ParkingTicketDto> get copyWith =>
      __$$_ParkingTicketDtoCopyWithImpl<_$_ParkingTicketDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingTicketDtoToJson(
      this,
    );
  }
}

abstract class _ParkingTicketDto extends ParkingTicketDto {
  const factory _ParkingTicketDto(
      {required final int id,
      required final String licensePlate,
      @JsonKey(name: "date") required final String parkingDate,
      required final String startTime,
      required final String endTime,
      required final double latitude,
      required final double longitude,
      required final String userCuil,
      required final ReceiptDto receipt}) = _$_ParkingTicketDto;
  const _ParkingTicketDto._() : super._();

  factory _ParkingTicketDto.fromJson(Map<String, dynamic> json) =
      _$_ParkingTicketDto.fromJson;

  @override
  int get id;
  @override
  String get licensePlate;
  @override
  @JsonKey(name: "date")
  String get parkingDate;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get userCuil;
  @override
  ReceiptDto get receipt;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingTicketDtoCopyWith<_$_ParkingTicketDto> get copyWith =>
      throw _privateConstructorUsedError;
}
