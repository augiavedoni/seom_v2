part of 'vehicles_carousel.dart';

class _VehicleInformationCard extends StatelessWidget {
  final Vehicle vehicle;

  const _VehicleInformationCard({
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
            "${vehicle.make.getOrCrash()} ${vehicle.model.getOrCrash()}",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${vehicle.year.getOrCrash()}",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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
                vehicle.licensePlate.getOrCrash(),
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Estacionar",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: green,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
