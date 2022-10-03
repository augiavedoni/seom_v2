import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_failure.freezed.dart';

@freezed
class PermissionFailure with _$PermissionFailure {
  const factory PermissionFailure.unexpected() = _Unexpected;
  const factory PermissionFailure.serviceNotEnabled() = _ServiceNotEnabled;
  const factory PermissionFailure.permissionDenied() = _PermissionDenied;
  const factory PermissionFailure.permissionDeniedForever() =
      _PermissionDeniedForever;
}
