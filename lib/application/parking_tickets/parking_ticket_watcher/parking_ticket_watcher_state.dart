part of 'parking_ticket_watcher_bloc.dart';

@freezed
class ParkingTicketWatcherState with _$ParkingTicketWatcherState {
  const factory ParkingTicketWatcherState.initial() =
      ParkingTicketWatcherStateInitial;
  const factory ParkingTicketWatcherState.loadInProgress() =
      ParkingTicketWatcherStateLoadInProgress;
  const factory ParkingTicketWatcherState.loadSuccess(
    KtList<ParkingTicket> parkingTickets,
  ) = ParkingTicketWatcherStateLoadSuccess;
  const factory ParkingTicketWatcherState.loadFailure(
    ParkingTicketFailure parkingTicketFailure,
  ) = ParkingTicketWatcherStateLoadFailure;
}
