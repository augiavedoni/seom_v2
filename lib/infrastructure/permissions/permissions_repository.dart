import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../domain/permissions/i_permissions_manager.dart';
import '../../domain/permissions/permission_failure.dart';

@Injectable(as: IPermissionsManager)
@lazySingleton
class PermissionsRepository implements IPermissionsManager {
  @override
  Future<Either<PermissionFailure, Unit>> verifyLocationService() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    late LocationPermission locationPermission;

    if (!serviceEnabled) {
      return left(const PermissionFailure.serviceNotEnabled());
    }

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
    }

    if (locationPermission == LocationPermission.denied) {
      return left(const PermissionFailure.permissionDenied());
    } else if (locationPermission == LocationPermission.deniedForever) {
      return left(const PermissionFailure.permissionDeniedForever());
    } else {
      try {
        await Geolocator.getCurrentPosition();

        return right(unit);
      } on LocationServiceDisabledException {
        /// The [Geolocator] package throws this exception both when the GPS
        /// service is disabled and when the Google Location Services is also
        /// disabled.
        return left(const PermissionFailure.serviceNotEnabled());
      }
    }
  }
}
