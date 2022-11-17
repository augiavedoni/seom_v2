import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/home/widgets/parking_ticket_information_card.dart';
import 'package:seom_v2/presentation/home/widgets/parking_ticket_with_error_card.dart';

class RecentActivityList extends StatelessWidget {
  const RecentActivityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(NavigationToolbar.kMiddleSpacing),
          child: Text(
            "Tu actividad reciente",
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        BlocBuilder<ParkingTicketWatcherBloc, ParkingTicketWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const SizedBox(),
            loadSuccess: (state) => state.parkingTickets.isEmpty()
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Align(
                      child: Text(
                        'No tenés actividad reciente',
                        style: theme.textTheme.bodyText2!.copyWith(
                          color: black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.parkingTickets.size > 3
                        ? 3
                        : state.parkingTickets.size,
                    itemBuilder: (_, index) {
                      final parkingTicket = state.parkingTickets.get(index);

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
