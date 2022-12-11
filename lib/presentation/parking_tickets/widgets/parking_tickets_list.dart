import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart';
import 'package:seom_v2/presentation/parking_tickets/widgets/parking_ticket_information_card.dart';
import 'package:seom_v2/presentation/parking_tickets/widgets/parking_ticket_with_error_card.dart';

class ParkingTicketsList extends StatelessWidget {
  const ParkingTicketsList({
    super.key,
    required this.parkingTickets,
    this.limitAmount = false,
  });

  final KtList<ParkingTicket> parkingTickets;
  final bool limitAmount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: limitAmount ? EdgeInsets.zero : null,
      physics: limitAmount ? const NeverScrollableScrollPhysics() : null,
      shrinkWrap: true,
      itemCount: limitAmount
          ? parkingTickets.size >= 3
              ? 3
              : parkingTickets.size
          : parkingTickets.size,
      itemBuilder: (_, index) {
        final parkingTicket = parkingTickets.get(index);

        return parkingTicket.failureOption.isNone()
            ? ParkingTicketInformationCard(
                parkingTicket: parkingTicket,
              )
            : ParkingTicketWithErrorCard(
                parkingTicket: parkingTicket,
              );
      },
      separatorBuilder: (_, __) => const SizedBox(
        height: 10,
      ),
    );
  }
}
