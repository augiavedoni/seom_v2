import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';

class RecentActivityLoadFailureCard extends StatelessWidget {
  const RecentActivityLoadFailureCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(
        NavigationToolbar.kMiddleSpacing,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: Colors.black,
            size: 36,
          ),
          const SizedBox(
            height: NavigationToolbar.kMiddleSpacing,
          ),
          Text(
            'Ocurrió un error obteniendo tu actividad reciente. Te pedimos que vuelvas a intentarlo.',
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Reintentar',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            onPressed: () => context.read<ParkingTicketWatcherBloc>().add(
                  ParkingTicketWatcherEvent.getAllStarted(),
                ),
          ),
        ],
      ),
    );
  }
}
