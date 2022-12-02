// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/infrastructure/receipts/dto/receipt_dto.dart';

import '../../../domain/auth/value_objects/cuil.dart';
import '../../../domain/parking_tickets/entities/parking_ticket.dart';
import '../../../domain/parking_tickets/value_objects/end_time.dart';
import '../../../domain/parking_tickets/value_objects/latitude.dart';
import '../../../domain/parking_tickets/value_objects/longitude.dart';
import '../../../domain/parking_tickets/value_objects/parking_date.dart';
import '../../../domain/parking_tickets/value_objects/start_time.dart';
import '../../../domain/vehicles/value_objects/license_plate.dart';

part 'parking_ticket_dto.freezed.dart';
part 'parking_ticket_dto.g.dart';

@freezed
class ParkingTicketDto with _$ParkingTicketDto {
  const ParkingTicketDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ParkingTicketDto({
    required int id,
    required String licensePlate,
    @JsonKey(name: "date") required String parkingDate,
    required String startTime,
    required String endTime,
    required double latitude,
    required double longitude,
    required String userCuil,
    required ReceiptDto receipt,
  }) = _ParkingTicketDto;

  factory ParkingTicketDto.fromDomain(ParkingTicket parkingTicket) {
    return ParkingTicketDto(
      id: parkingTicket.id,
      licensePlate: parkingTicket.licensePlate.getOrCrash(),
      parkingDate: parkingTicket.date.getOrCrash().toString(),
      startTime: parkingTicket.startTime.getOrCrash().toString(),
      endTime: parkingTicket.endTime.getOrCrash().toString(),
      latitude: parkingTicket.latitude.getOrCrash(),
      longitude: parkingTicket.longitude.getOrCrash(),
      userCuil: parkingTicket.userCuil.getOrCrash(),
      receipt: ReceiptDto.fromDomain(parkingTicket.receipt),
    );
  }

  ParkingTicket toDomain() {
    return ParkingTicket(
      id: id,
      licensePlate: LicensePlate(licensePlate),
      date: ParkingDate(parkingDate),
      startTime: StartTime(startTime),
      endTime: EndTime(endTime),
      latitude: Latitude(latitude),
      longitude: Longitude(longitude),
      userCuil: Cuil(userCuil),
      receipt: receipt.toDomain(),
    );
  }

  factory ParkingTicketDto.fromJson(Map<String, dynamic> json) =>
      _$ParkingTicketDtoFromJson(json);
}
