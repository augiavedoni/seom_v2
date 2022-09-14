import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_failure.freezed.dart';

@freezed
class VehicleFailure with _$VehicleFailure {
  const factory VehicleFailure.unexpected() = _Unexpected;
}
