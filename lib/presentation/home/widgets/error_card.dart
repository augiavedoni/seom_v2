part of 'vehicles_carousel.dart';

class _ErrorCard extends StatelessWidget {
  const _ErrorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Align(
      child: Container(
        width: size.width - (NavigationToolbar.kMiddleSpacing * 2),
        height: size.height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.warning_amber_rounded,
                  color: yellow,
                  size: 36,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    "Ocurrió un error al cargar tus vehículos",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => context.read<VehicleWatcherBloc>().add(
                    const VehicleWatcherEvent.getAllStarted(),
                  ),
              child: Text(
                "Reintentar",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
