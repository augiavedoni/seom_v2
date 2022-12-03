import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:seom_v2/application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart';
import 'package:seom_v2/application/permissions/permissions_bloc.dart';
import 'package:seom_v2/application/vehicles/vehicle_actor/vehicle_actor_bloc.dart';
import 'package:seom_v2/application/vehicles/vehicle_watcher/vehicle_watcher_bloc.dart';
import 'package:seom_v2/domain/permissions/permission_failure.dart';
import 'package:seom_v2/domain/vehicles/entities/vehicle.dart';
import 'package:seom_v2/domain/vehicles/vehicle_failure.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/feedback/feedback_screen.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';
import 'package:shimmer/shimmer.dart';

part 'loading_in_progress_card.dart';
part 'vehicle_information_card.dart';
part 'wrong_vehicle_information_card.dart';
part 'error_card.dart';

class VehiclesCarousel extends StatelessWidget {
  const VehiclesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(NavigationToolbar.kMiddleSpacing),
          child: Text(
            "Tus vehículos",
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        BlocBuilder<VehicleWatcherBloc, VehicleWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const _LoadingInProgressCard(),
            loadSuccess: (state) => state.vehicles.isEmpty()
                ? SizedBox(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.info_outline_rounded,
                          color: black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "No tenés vehículos a tu nombre",
                          style: theme.textTheme.headline6!.copyWith(
                            color: black,
                          ),
                        ),
                      ],
                    ),
                  )
                : CarouselSlider(
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      viewportFraction: 0.8,
                      padEnds: false,
                    ),
                    items: state.vehicles
                        .asList()
                        .map(
                          (vehicle) => vehicle.failureOption.isSome()
                              ? _WrongVehicleInformationCard(
                                  vehicle: vehicle,
                                )
                              : _VehicleInformationCard(
                                  vehicle: vehicle,
                                ),
                        )
                        .toList(),
                  ),
            loadFailure: (state) => const _ErrorCard(),
          ),
        ),
      ],
    );
  }
}
