import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_ticket_failure.freezed.dart';

@freezed
class ParkingTicketFailure with _$ParkingTicketFailure {
  const factory ParkingTicketFailure.unexpected() =
      ParkingTicketUnexpectedFailure;
}
