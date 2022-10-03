import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geolocator/geolocator.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: NavigationToolbar.kMiddleSpacing,
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  width: size.width * 0.7,
                  "lib/presentation/core/assets/undraw_my_location_re_r52x.svg",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Oops... algo ocurrió",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Necesitamos acceso a tu ubicación para poder ofrecerte un mejor servicio y poder darte asistirte mejor en caso de que sea necesario",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () async => await Geolocator.openLocationSettings(),
                child: const Text("Permitir acceso"),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Volver"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
