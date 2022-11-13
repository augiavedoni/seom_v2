import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(NavigationToolbar.kMiddleSpacing),
          child: Text(
            "Tu actividad reciente",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        BlocBuilder<ParkingTicketWatcherBloc, ParkingTicketWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const SizedBox(),
            loadSuccess: (state) => state.vehicles.isEmpty()
                ? Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  )
                : Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
            loadFailure: (state) => Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ],
    );
  }
}
