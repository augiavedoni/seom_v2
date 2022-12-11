import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart';
import 'package:seom_v2/presentation/common_widgets/custom_app_bar.dart';
import 'package:seom_v2/presentation/parking_tickets/widgets/parking_tickets_list.dart';

class ParkingTicketsHistoryScreen extends StatelessWidget {
  const ParkingTicketsHistoryScreen({
    super.key,
    required this.parkingTickets,
  });

  final KtList<ParkingTicket> parkingTickets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Historial de estacionamiento',
      ),
      backgroundColor: Colors.white,
      body: ParkingTicketsList(
        parkingTickets: parkingTickets,
      ),
    );
  }
}
