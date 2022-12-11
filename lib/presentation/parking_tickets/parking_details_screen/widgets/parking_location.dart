import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ParkingLocation extends StatefulWidget {
  const ParkingLocation({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  final double latitude;
  final double longitude;

  @override
  State<ParkingLocation> createState() => _ParkingLocationState();
}

class _ParkingLocationState extends State<ParkingLocation> {
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on_rounded,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Ubicación aproximada',
              style: theme.textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.latitude, widget.longitude),
              zoom: 16,
            ),
            markers: markers.values.toSet(),
            myLocationButtonEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              final marker = Marker(
                markerId: MarkerId('parking'),
                position: LatLng(widget.latitude, widget.longitude),
                infoWindow: InfoWindow.noText,
              );

              setState(() {
                markers[MarkerId('parking')] = marker;
              });

              _controller.complete(controller);
            },
          ),
        ),
      ],
    );
  }
}
