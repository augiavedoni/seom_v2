import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/auth/seom_user.dart';
import '../../domain/parking_tickets/entities/parking_ticket.dart';
import '../../domain/parking_tickets/i_parking_ticket_repository.dart';
import '../../domain/parking_tickets/parking_ticket_failure.dart';
import '../core/http/seom_client.dart';
import '../datasource/user_data_source.dart';
import 'dto/parking_ticket_dto.dart';

@Injectable(as: IParkingTicketRepository)
@lazySingleton
class ParkingTicketRepository implements IParkingTicketRepository {
  final SeomClientContract _client;
  final UserDataSource _userDataSource;

  ParkingTicketRepository(
    this._client,
    this._userDataSource,
  );

  @override
  Future<Either<ParkingTicketFailure, KtList<ParkingTicket>>> getAll() async {
    final SeomUser? seomUser = _userDataSource.user;

    final response = await _client.get(
      "parking-tickets",
      parameters: {
        "userCuil": seomUser!.cuil.getOrCrash(),
      },
    );

    return response.map(
      ok: (response) {
        final List<ParkingTicket> parkingTickets = response
            .map<ParkingTicket>((parkingTicket) =>
                ParkingTicketDto.fromJson(parkingTicket).toDomain())
            .toList();

        return right<ParkingTicketFailure, KtList<ParkingTicket>>(
          parkingTickets.reversed.toImmutableList(),
        );
      },
      error: (_, __) {
        return left(const ParkingTicketFailure.unexpected());
      },
    );
  }
}
