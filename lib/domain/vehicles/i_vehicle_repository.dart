import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'entities/vehicle.dart';
import 'vehicle_failure.dart';

abstract class IVehicleRepository {
  Future<Either<VehicleFailure, KtList<Vehicle>>> getAll();
  Future<Either<VehicleFailure, Vehicle>> park(Vehicle vehicle);
  Future<Either<VehicleFailure, Vehicle>> unpark(Vehicle vehicle);
}
