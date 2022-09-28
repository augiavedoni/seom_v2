import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:seom_v2/domain/vehicles/vehicle_failure.dart';
import 'package:seom_v2/domain/vehicles/entities/vehicle.dart';

import '../../domain/auth/seom_user.dart';
import '../../domain/vehicles/i_vehicle_repository.dart';
import '../core/http/seom_client.dart';
import '../datasource/user_data_source.dart';
import 'dto/vehicle_dto.dart';

@Injectable(as: IVehicleRepository)
@lazySingleton
class VehicleRepository implements IVehicleRepository {
  final SeomClient _client;
  final UserDataSource _userDataSource;

  VehicleRepository(
    this._client,
    this._userDataSource,
  );

  @override
  Future<Either<VehicleFailure, KtList<Vehicle>>> getAll() async {
    final SeomUser? seomUser = _userDataSource.user;

    final response = await _client.get(
      "vehicles",
      parameters: {
        "userCuil": seomUser!.cuil.getOrCrash(),
      },
    );

    return response.map(
      ok: (response) {
        final List<Vehicle> vehicles = response
            .map<Vehicle>((vehicle) => VehicleDto.fromJson(vehicle).toDomain())
            .toList();

        return right<VehicleFailure, KtList<Vehicle>>(
          vehicles.toImmutableList(),
        );
      },
      error: (_, __) {
        return left(const VehicleFailure.unexpected());
      },
    );
  }

  @override
  Future<Either<VehicleFailure, Vehicle>> park(Vehicle vehicle) async {
    final response = await _client.patch(
      "vehicles/park",
      parameters: {
        "licensePlate": vehicle.licensePlate.getOrCrash(),
        //TODO: reemplazar valores hardcodeados
        "latitude": -31.654157061689624,
        "longitude": -60.71091002950457
      },
    );

    return response.map(
      ok: (response) {
        final VehicleDto vehicleDto = VehicleDto.fromJson(response);
        final Vehicle vehicle = vehicleDto.toDomain();

        return right<VehicleFailure, Vehicle>(vehicle);
      },
      error: (error, statusCode) {
        late final VehicleFailure failure;

        if (error.error == "vehicle-already-parked") {
          failure = const VehicleFailure.alreadyParked();
        } else if (error.error == "vehicle-not-found") {
          failure = const VehicleFailure.vehicleNotFound();
        } else {
          failure = const VehicleFailure.unexpected();
        }

        return left(failure);
      },
    );
  }

  @override
  Future<Either<VehicleFailure, Vehicle>> unpark(Vehicle vehicle) async {
    final response = await _client.patch(
      "vehicles/unpark",
      parameters: {
        "licensePlate": vehicle.licensePlate.getOrCrash(),
        "parked": false,
      },
    );

    return response.map(
      ok: (response) {
        final VehicleDto vehicleDto = VehicleDto.fromJson(response);
        final Vehicle vehicle = vehicleDto.toDomain();

        return right<VehicleFailure, Vehicle>(vehicle);
      },
      error: (error, statusCode) {
        late final VehicleFailure failure;

        if (error.error == "parking-ticket-not-found") {
          failure = const VehicleFailure.parkingTicketNotFound();
        } else {
          failure = const VehicleFailure.unexpected();
        }

        return left(failure);
      },
    );
  }
}
