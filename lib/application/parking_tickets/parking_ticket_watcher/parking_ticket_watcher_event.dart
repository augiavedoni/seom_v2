part of 'parking_ticket_watcher_bloc.dart';

@freezed
class ParkingTicketWatcherEvent with _$ParkingTicketWatcherEvent {
  const factory ParkingTicketWatcherEvent.getAllStarted() = GetAllStarted;
}
