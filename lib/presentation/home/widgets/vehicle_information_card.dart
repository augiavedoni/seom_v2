part of 'vehicles_carousel.dart';

class _VehicleInformationCard extends HookWidget {
  final Vehicle vehicle;

  const _VehicleInformationCard({
    Key? key,
    required this.vehicle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final hookedVehicle = useState<Vehicle>(vehicle);

    return BlocProvider(
      create: (context) => getIt<VehicleActorBloc>()
        ..add(
          VehicleActorEvent.initialized(optionOf(vehicle)),
        ),
      child: BlocConsumer<VehicleActorBloc, VehicleActorState>(
        listenWhen: (previous, current) =>
            previous.saveFailureOrSucessOption !=
            current.saveFailureOrSucessOption,
        listener: (context, state) => state.saveFailureOrSucessOption.fold(
          () {},
          (either) => either.fold(
            (failure) => _showFailureDialog(context, failure),
            (editedVehicle) {
              hookedVehicle.value = editedVehicle;
              state.copyWith(vehicle: editedVehicle);
            },
          ),
        ),
        buildWhen: (previous, current) =>
            previous.isChangingParkingStatus != current.isChangingParkingStatus,
        builder: (context, state) => state.isChangingParkingStatus
            ? const _LoadingInProgressCard()
            : Container(
                width: size.width * 0.8,
                height: size.height * 0.2,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${hookedVehicle.value.make.getOrCrash()} ${hookedVehicle.value.model.getOrCrash()}",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${hookedVehicle.value.year.getOrCrash()}",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                              ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          hookedVehicle.value.licensePlate.getOrCrash(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                              ),
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO: verificar permisos de ubicación
                            if (hookedVehicle.value.parked) {
                              context.read<VehicleActorBloc>().add(
                                    const VehicleActorEvent.unparked(),
                                  );
                            } else {
                              context.read<VehicleActorBloc>().add(
                                    const VehicleActorEvent.parked(),
                                  );
                            }
                          },
                          child: Text(
                            hookedVehicle.value.parked
                                ? "Finalizar"
                                : "Estacionar",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Future<dynamic> _showFailureDialog(
    BuildContext context,
    VehicleFailure failure,
  ) {
    final String description = failure.map(
      unexpected: (_) => "Oops! Algó falló... ¡Volvé a intentarlo!",
      alreadyParked: (_) =>
          "Este vehículo ya se encuentra estacionado. Por favor, contactate con soporte.",
      vehicleNotFound: (_) =>
          "Este vehículo no existe en nuestros registros. Por favor, contacte con soporte.",
      parkingTicketNotFound: (_) =>
          "Este vehículo no se encuentra estacionado. Por favor, contactate con soporte.",
    );

    return showDialog(
      context: context,
      builder: (context) {
        return CustomDialog(
          title: "Algo ocurrió...",
          description: description,
          mainButtonText: "Volver",
          mainButtonFunctionality: () => Navigator.of(context).pop(),
          dialogStatus: DialogStatus.error,
        );
      },
    );
  }
}
