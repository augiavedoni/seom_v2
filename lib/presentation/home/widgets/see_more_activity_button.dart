import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class SeeMoreActivityButton extends StatelessWidget {
  const SeeMoreActivityButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(
        NavigationToolbar.kMiddleSpacing,
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (_) => green,
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (_) => lightGreen,
          ),
        ),
        onPressed: () => context.router.push(
          ParkingTicketsHistoryScreenRoute(
            parkingTickets: (context.read<ParkingTicketWatcherBloc>().state
                    as ParkingTicketWatcherStateLoadSuccess)
                .parkingTickets,
          ),
        ),
        child: Text(
          'Ver más actividad',
          style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
