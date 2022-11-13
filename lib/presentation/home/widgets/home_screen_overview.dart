import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/home/widgets/recent_activity_list.dart';

import 'vehicles_carousel.dart';

class HomeScreenOverview extends StatelessWidget {
  const HomeScreenOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        VehiclesCarousel(),
        RecentActivityList(),
      ],
    );
  }
}
