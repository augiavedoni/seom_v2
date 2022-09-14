import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../application/vehicles/vehicle_watcher/vehicle_watcher_bloc.dart';
import '../../../domain/vehicles/entities/vehicle.dart';
import '../../core/theme/app_colors.dart';

part 'loading_in_progress_card.dart';
part 'vehicle_information_card.dart';
part 'wrong_vehicle_information_card.dart';
part 'error_card.dart';

class VehiclesCarousel extends StatelessWidget {
  const VehiclesCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: NavigationToolbar.kMiddleSpacing,
            vertical: NavigationToolbar.kMiddleSpacing,
          ),
          child: Text(
            "Tus vehículos",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        BlocBuilder<VehicleWatcherBloc, VehicleWatcherState>(
          builder: (context, state) => state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const _LoadingInProgressCard(),
            loadSuccess: (state) {
              return state.vehicles.isEmpty()
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
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: black,
                                    ),
                          ),
                        ],
                      ),
                    )
                  : CarouselSlider(
                      options: CarouselOptions(
                        height: size.height * 0.2,
                        enableInfiniteScroll: false,
                        viewportFraction: 0.85,
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
                    );
            },
            loadFailure: (state) => const _ErrorCard(),
          ),
        ),
      ],
    );
  }
}
