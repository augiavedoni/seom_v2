import 'package:flutter/material.dart';

import 'vehicles_carousel.dart';

class HomeScreenOverview extends StatelessWidget {
  const HomeScreenOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        VehiclesCarousel(),
      ],
    );
  }
}
