import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/value_objects/cuil.dart';
import '../../vehicles/value_objects/license_plate.dart';
import '../value_objects/end_time.dart';
import '../value_objects/latitude.dart';
import '../value_objects/longitude.dart';
import '../value_objects/parking_date.dart';
import '../value_objects/start_time.dart';

part 'parking_ticket.freezed.dart';

@freezed
abstract class ParkingTicket implements _$ParkingTicket {
  const ParkingTicket._();

  const factory ParkingTicket({
    required int id,
    required LicensePlate licensePlate,
    required ParkingDate date,
    required StartTime startTime,
    required EndTime endTime,
    required Latitude latitude,
    required Longitude longitude,
    required Cuil userCuil,
  }) = _ParkingTicket;
}
