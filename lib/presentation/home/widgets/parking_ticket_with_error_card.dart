import 'package:flutter/material.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart';

class ParkingTicketWithErrorCard extends StatelessWidget {
  const ParkingTicketWithErrorCard({
    super.key,
    required this.parkingTicket,
  });

  final ParkingTicket parkingTicket;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final failure = parkingTicket.failureOption.getOrElse(
      () => const ValueFailure.empty(),
    );

    return Container(
      width: size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.warning_amber_rounded,
            color: Colors.white,
            size: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: RichText(
              text: TextSpan(
                  text:
                      'Hubo un error cargando la información. Por favor, contactate con soporte y brinda el siguiente código de error: ',
                  style: theme.textTheme.bodyText2,
                  children: [
                    TextSpan(
                      text: '$failure',
                      style: theme.textTheme.bodyText2!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
