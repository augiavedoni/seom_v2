import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/vehicles/entities/vehicle.dart';
import '../../../domain/vehicles/i_vehicle_repository.dart';
import '../../../domain/vehicles/vehicle_failure.dart';

part 'vehicle_watcher_event.dart';
part 'vehicle_watcher_state.dart';
part 'vehicle_watcher_bloc.freezed.dart';

@injectable
class VehicleWatcherBloc
    extends Bloc<VehicleWatcherEvent, VehicleWatcherState> {
  final IVehicleRepository _vehicleRepository;

  VehicleWatcherBloc(
    this._vehicleRepository,
  ) : super(const VehicleWatcherState.initial()) {
    on<VehicleWatcherEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        getAllStarted: (event) async {
          emit(const VehicleWatcherState.loadInProgress());

          final failureOrSuccess = await _vehicleRepository.getAll();

          emit(
            failureOrSuccess.fold(
              (failure) => VehicleWatcherState.loadFailure(failure),
              (vehicles) => VehicleWatcherState.loadSuccess(vehicles),
            ),
          );
        },
      );
    });
  }
}
