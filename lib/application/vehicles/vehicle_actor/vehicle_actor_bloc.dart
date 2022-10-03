import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/vehicles/entities/vehicle.dart';
import '../../../domain/vehicles/i_vehicle_repository.dart';
import '../../../domain/vehicles/vehicle_failure.dart';

part 'vehicle_actor_event.dart';
part 'vehicle_actor_state.dart';
part 'vehicle_actor_bloc.freezed.dart';

@injectable
class VehicleActorBloc extends Bloc<VehicleActorEvent, VehicleActorState> {
  final IVehicleRepository _vehicleRepository;

  VehicleActorBloc(
    this._vehicleRepository,
  ) : super(VehicleActorState.initial()) {
    on<VehicleActorEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        initialized: (event) => emit(
          event.initialVehicleOption.fold(
            () => state,
            (initialVechicle) => state.copyWith(
              vehicle: initialVechicle,
            ),
          ),
        ),
        parked: (event) async {
          Either<VehicleFailure, Vehicle>? failureOrSuccess;

          emit(
            state.copyWith(
              isChangingParkingStatus: true,
              saveFailureOrSucessOption: none(),
            ),
          );

          failureOrSuccess = await _vehicleRepository.park(
            state.vehicle,
            event.position,
          );

          emit(
            state.copyWith(
              isChangingParkingStatus: false,
              saveFailureOrSucessOption: optionOf(failureOrSuccess),
            ),
          );
        },
        unparked: (event) async {
          Either<VehicleFailure, Vehicle>? failureOrSuccess;

          emit(
            state.copyWith(
              isChangingParkingStatus: true,
              saveFailureOrSucessOption: none(),
            ),
          );

          failureOrSuccess = await _vehicleRepository.unpark(
            state.vehicle,
          );

          emit(
            state.copyWith(
              isChangingParkingStatus: false,
              saveFailureOrSucessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
