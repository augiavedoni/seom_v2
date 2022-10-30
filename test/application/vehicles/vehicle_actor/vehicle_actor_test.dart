import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:seom_v2/domain/vehicles/entities/vehicle.dart';
import 'package:seom_v2/domain/vehicles/vehicle_failure.dart';
import 'package:seom_v2/infrastructure/auth/dto/seom_user_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_error_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_response_type.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';
import 'package:seom_v2/infrastructure/vehicles/dto/vehicle_dto.dart';
import 'package:seom_v2/infrastructure/vehicles/vehicle_repository.dart';

import '../../../infrastructure/core/http/seom_client_mock.dart';
import 'vehicle_actor_test.mocks.dart';

@GenerateMocks([UserDataSource])
main() {
  const errorStatusCode = 500;
  final seomUser = SeomUserDto(
    id: 1,
    cuil: '11111111111',
    firstName: 'Test',
    lastName: 'Test',
    birthdate: DateTime.now(),
    refreshToken: 'Test',
    token: 'Test',
  );
  final vehicle = VehicleDto(
    id: 1,
    licensePlate: 'test',
    make: 'test',
    model: 'test',
    parked: false,
    vehicleType: 'CAR',
    year: DateTime.now().year,
  );
  final userDataSource = MockUserDataSource();

  group(
    'VehicleActorBloc success cases tests',
    () {
      const ten = 10.0;
      final position = Position(
        accuracy: ten,
        altitude: ten,
        heading: ten,
        latitude: ten,
        longitude: ten,
        speed: ten,
        speedAccuracy: ten,
        timestamp: DateTime.now(),
        isMocked: true,
      );
      final seomClientMock = SeomClientMock(
        onGet: <T>() async => HTTPResponseType.ok(List.empty() as T),
        onPatch: <T>() async => HTTPResponseType.ok(vehicle.toJson() as T),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test(
        'Should receive a vehicle when we call park',
        () async {
          final result = await vehicleRepository.park(
            vehicle.toDomain(),
            position,
          );

          expect(result.isRight(), true);
          expect(
            result.getOrElse(() => vehicle.toDomain()),
            isA<Vehicle>(),
          );
        },
      );

      test(
        'Should receive a vehicle when we call unpark',
        () async {
          final result = await vehicleRepository.unpark(vehicle.toDomain());

          expect(result.isRight(), true);
          expect(
            result.getOrElse(() => vehicle.toDomain()),
            isA<Vehicle>(),
          );
        },
      );
    },
  );

  group(
    'VehicleActorBloc VehicleFailureUnexpected error cases tests',
    () {
      const error = HTTPErrorDto(
        error: 'test',
        message: 'test',
        path: 'test',
        status: errorStatusCode,
      );
      final seomClientMock = SeomClientMock(
        onGet: <T>() async => HTTPResponseType.error(error, errorStatusCode),
        onPatch: <T>() async => HTTPResponseType.error(error, errorStatusCode),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test(
        'Should receive VehicleFailureUnexpected when we call park',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.park(vehicle.toDomain(), null);

          expect(result.isLeft(), true);
          expect(
            result.fold(
              (failure) => failure,
              (_) => null,
            ),
            isA<VehicleFailureUnexpected>(),
          );
        },
      );

      test(
        'Should receive VehicleFailureUnexpected when we call unpark',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.unpark(vehicle.toDomain());

          expect(result.isLeft(), true);
          expect(
            result.fold(
              (failure) => failure,
              (_) => null,
            ),
            isA<VehicleFailureUnexpected>(),
          );
        },
      );
    },
  );

  group(
    'VehicleActorBloc VehicleFailureAlreadyParked error case test',
    () {
      const error = HTTPErrorDto(
        error: 'vehicle-already-parked',
        message: 'test',
        path: 'test',
        status: errorStatusCode,
      );
      final seomClientMock = SeomClientMock(
        onPatch: <T>() async => HTTPResponseType.error(error, errorStatusCode),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test(
        'Should receive VehicleFailureAlreadyParked when we call park',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.park(vehicle.toDomain(), null);

          expect(result.isLeft(), true);
          expect(
            result.fold(
              (failure) => failure,
              (_) => null,
            ),
            isA<VehicleFailureAlreadyParked>(),
          );
        },
      );
    },
  );

  group(
    'VehicleActorBloc VehicleFailureVehicleNotFound error case test',
    () {
      const error = HTTPErrorDto(
        error: 'vehicle-not-found',
        message: 'test',
        path: 'test',
        status: errorStatusCode,
      );
      final seomClientMock = SeomClientMock(
        onPatch: <T>() async => HTTPResponseType.error(error, errorStatusCode),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test(
        'Should receive VehicleFailureVehicleNotFound when we call park',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.park(vehicle.toDomain(), null);

          expect(result.isLeft(), true);
          expect(
            result.fold(
              (failure) => failure,
              (_) => null,
            ),
            isA<VehicleFailureVehicleNotFound>(),
          );
        },
      );
    },
  );

  group(
    'VehicleActorBloc VehicleFailureParkingTicketNotFound error case test',
    () {
      const error = HTTPErrorDto(
        error: 'parking-ticket-not-found',
        message: 'test',
        path: 'test',
        status: errorStatusCode,
      );
      final seomClientMock = SeomClientMock(
        onPatch: <T>() async => HTTPResponseType.error(error, errorStatusCode),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test(
        'Should receive VehicleFailureParkingTicketNotFound when we call unpark',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.unpark(vehicle.toDomain());

          expect(result.isLeft(), true);
          expect(
            result.fold(
              (failure) => failure,
              (_) => null,
            ),
            isA<VehicleFailureParkingTicketNotFound>(),
          );
        },
      );
    },
  );
}
