part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState({
    required Option<Either<PermissionFailure, Unit>>
        verificationFailureOrSucessOption,
    required bool verificationInProgress,
  }) = _Initial;

  factory PermissionsState.initial() => PermissionsState(
        verificationFailureOrSucessOption: none(),
        verificationInProgress: false,
      );
}
