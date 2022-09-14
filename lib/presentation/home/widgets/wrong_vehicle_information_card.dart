part of 'vehicles_carousel.dart';

class _WrongVehicleInformationCard extends StatelessWidget {
  final Vehicle vehicle;

  const _WrongVehicleInformationCard({
    Key? key,
    required this.vehicle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: yellow,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "Vehículo inválido",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Por favor, contactate con soporte y menciona el siguiente código de error:",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            vehicle.failureOption.fold(
              () => "",
              (failure) => failure.toString(),
            ),
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
