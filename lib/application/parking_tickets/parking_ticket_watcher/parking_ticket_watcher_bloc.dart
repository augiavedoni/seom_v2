import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/parking_tickets/entities/parking_ticket.dart';
import '../../../domain/parking_tickets/i_parking_ticket_repository.dart';
import '../../../domain/parking_tickets/parking_ticket_failure.dart';

part 'parking_ticket_watcher_event.dart';
part 'parking_ticket_watcher_state.dart';
part 'parking_ticket_watcher_bloc.freezed.dart';

@injectable
class ParkingTicketWatcherBloc
    extends Bloc<ParkingTicketWatcherEvent, ParkingTicketWatcherState> {
  final IParkingTicketRepository _parkingTicketRepository;

  ParkingTicketWatcherBloc(
    this._parkingTicketRepository,
  ) : super(const ParkingTicketWatcherState.initial()) {
    on<ParkingTicketWatcherEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        getAllStarted: (event) async {
          emit(const ParkingTicketWatcherState.loadInProgress());

          final failureOrSuccess = await _parkingTicketRepository.getAll();

          emit(
            failureOrSuccess.fold(
              (failure) => ParkingTicketWatcherState.loadFailure(failure),
              (vehicles) => ParkingTicketWatcherState.loadSuccess(vehicles),
            ),
          );
        },
      );
    });
  }
}
