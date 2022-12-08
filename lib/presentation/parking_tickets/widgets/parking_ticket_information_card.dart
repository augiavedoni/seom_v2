import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class ParkingTicketInformationCard extends StatelessWidget {
  const ParkingTicketInformationCard({
    Key? key,
    required this.parkingTicket,
  }) : super(key: key);

  final ParkingTicket parkingTicket;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: black,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildInformationRow(
            context: context,
            theme: theme,
            label: 'Vehículo',
            value: parkingTicket.licensePlate.getOrCrash(),
          ),
          _buildInformationRow(
            context: context,
            theme: theme,
            label: 'Día',
            value: DateFormat('dd/MM/yyyy').format(
              parkingTicket.date.getOrCrash(),
            ),
          ),
          _buildInformationRow(
            context: context,
            theme: theme,
            label: 'Franja horaria',
            value:
                '${parkingTicket.startTime.getOrCrash().format(context)} | ${parkingTicket.endTime.getOrCrash().format(context)}',
          ),
        ],
      ),
    );
  }

  Row _buildInformationRow({
    required BuildContext context,
    required ThemeData theme,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: theme.textTheme.headline6!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
