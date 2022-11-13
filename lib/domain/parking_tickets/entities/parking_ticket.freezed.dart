// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingTicket {
  int get id => throw _privateConstructorUsedError;
  LicensePlate get licensePlate => throw _privateConstructorUsedError;
  ParkingDate get date => throw _privateConstructorUsedError;
  StartTime get startTime => throw _privateConstructorUsedError;
  EndTime get endTime => throw _privateConstructorUsedError;
  Latitude get latitude => throw _privateConstructorUsedError;
  Longitude get longitude => throw _privateConstructorUsedError;
  Cuil get userCuil => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParkingTicketCopyWith<ParkingTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingTicketCopyWith<$Res> {
  factory $ParkingTicketCopyWith(
          ParkingTicket value, $Res Function(ParkingTicket) then) =
      _$ParkingTicketCopyWithImpl<$Res, ParkingTicket>;
  @useResult
  $Res call(
      {int id,
      LicensePlate licensePlate,
      ParkingDate date,
      StartTime startTime,
      EndTime endTime,
      Latitude latitude,
      Longitude longitude,
      Cuil userCuil});
}

/// @nodoc
class _$ParkingTicketCopyWithImpl<$Res, $Val extends ParkingTicket>
    implements $ParkingTicketCopyWith<$Res> {
  _$ParkingTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userCuil = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as LicensePlate,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as ParkingDate,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as EndTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as Latitude,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as Longitude,
      userCuil: null == userCuil
          ? _value.userCuil
          : userCuil // ignore: cast_nullable_to_non_nullable
              as Cuil,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParkingTicketCopyWith<$Res>
    implements $ParkingTicketCopyWith<$Res> {
  factory _$$_ParkingTicketCopyWith(
          _$_ParkingTicket value, $Res Function(_$_ParkingTicket) then) =
      __$$_ParkingTicketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      LicensePlate licensePlate,
      ParkingDate date,
      StartTime startTime,
      EndTime endTime,
      Latitude latitude,
      Longitude longitude,
      Cuil userCuil});
}

/// @nodoc
class __$$_ParkingTicketCopyWithImpl<$Res>
    extends _$ParkingTicketCopyWithImpl<$Res, _$_ParkingTicket>
    implements _$$_ParkingTicketCopyWith<$Res> {
  __$$_ParkingTicketCopyWithImpl(
      _$_ParkingTicket _value, $Res Function(_$_ParkingTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licensePlate = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? userCuil = null,
  }) {
    return _then(_$_ParkingTicket(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as LicensePlate,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as ParkingDate,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as StartTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as EndTime,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as Latitude,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as Longitude,
      userCuil: null == userCuil
          ? _value.userCuil
          : userCuil // ignore: cast_nullable_to_non_nullable
              as Cuil,
    ));
  }
}

/// @nodoc

class _$_ParkingTicket extends _ParkingTicket {
  const _$_ParkingTicket(
      {required this.id,
      required this.licensePlate,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.latitude,
      required this.longitude,
      required this.userCuil})
      : super._();

  @override
  final int id;
  @override
  final LicensePlate licensePlate;
  @override
  final ParkingDate date;
  @override
  final StartTime startTime;
  @override
  final EndTime endTime;
  @override
  final Latitude latitude;
  @override
  final Longitude longitude;
  @override
  final Cuil userCuil;

  @override
  String toString() {
    return 'ParkingTicket(id: $id, licensePlate: $licensePlate, date: $date, startTime: $startTime, endTime: $endTime, latitude: $latitude, longitude: $longitude, userCuil: $userCuil)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParkingTicket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.userCuil, userCuil) ||
                other.userCuil == userCuil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, licensePlate, date,
      startTime, endTime, latitude, longitude, userCuil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParkingTicketCopyWith<_$_ParkingTicket> get copyWith =>
      __$$_ParkingTicketCopyWithImpl<_$_ParkingTicket>(this, _$identity);
}

abstract class _ParkingTicket extends ParkingTicket {
  const factory _ParkingTicket(
      {required final int id,
      required final LicensePlate licensePlate,
      required final ParkingDate date,
      required final StartTime startTime,
      required final EndTime endTime,
      required final Latitude latitude,
      required final Longitude longitude,
      required final Cuil userCuil}) = _$_ParkingTicket;
  const _ParkingTicket._() : super._();

  @override
  int get id;
  @override
  LicensePlate get licensePlate;
  @override
  ParkingDate get date;
  @override
  StartTime get startTime;
  @override
  EndTime get endTime;
  @override
  Latitude get latitude;
  @override
  Longitude get longitude;
  @override
  Cuil get userCuil;
  @override
  @JsonKey(ignore: true)
  _$$_ParkingTicketCopyWith<_$_ParkingTicket> get copyWith =>
      throw _privateConstructorUsedError;
}
