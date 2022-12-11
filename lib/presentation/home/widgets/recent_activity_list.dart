import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/home/widgets/recent_activity_load_failure_card.dart';
import 'package:seom_v2/presentation/home/widgets/see_more_activity_button.dart';
import 'package:seom_v2/presentation/parking_tickets/widgets/parking_tickets_list.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

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
        BlocConsumer<ParkingTicketWatcherBloc, ParkingTicketWatcherState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) => state.maybeMap(
            loadSuccess: (value) {
              if (value.parkingTickets.isEmpty()) {
                return;
              }

              final parkingTicket = value.parkingTickets.get(0);

              if (!parkingTicket.receipt.paid) {
                context.router.push(
                  ParkingDetailsScreenRoute(
                    parkingTicket: parkingTicket,
                    isPaying: true,
                  ),
                );
              }

              return;
            },
            orElse: () => null,
          ),
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const SizedBox(),
            loadSuccess: (state) {
              final amountOfParkingTickets = state.parkingTickets.size;

              if (amountOfParkingTickets == 0) {
                return Padding(
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
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ParkingTicketsList(
                      parkingTickets: state.parkingTickets,
                      limitAmount: true,
                    ),
                    amountOfParkingTickets > 3
                        ? BlocProvider<ParkingTicketWatcherBloc>.value(
                            value: context.read<ParkingTicketWatcherBloc>(),
                            child: const SeeMoreActivityButton(),
                          )
                        : const SizedBox(),
                    SizedBox(
                      height: amountOfParkingTickets > 3 ? 20 : null,
                    ),
                  ],
                );
              }
            },
            loadFailure: (state) =>
                BlocProvider<ParkingTicketWatcherBloc>.value(
              value: context.read<ParkingTicketWatcherBloc>(),
              child: const RecentActivityLoadFailureCard(),
            ),
          ),
        ),
      ],
    );
  }
}
