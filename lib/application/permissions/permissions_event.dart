part of 'permissions_bloc.dart';

@freezed
class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.locationVerificationStarted() =
      LocationVerificationStarted;
}
