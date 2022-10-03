import 'package:dartz/dartz.dart';

import 'permission_failure.dart';

abstract class IPermissionsManager {
  Future<Either<PermissionFailure, Unit>> verifyLocationService();
}
