import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'entities/parking_ticket.dart';
import 'parking_ticket_failure.dart';

abstract class IParkingTicketRepository {
  Future<Either<ParkingTicketFailure, KtList<ParkingTicket>>> getAll();
}
