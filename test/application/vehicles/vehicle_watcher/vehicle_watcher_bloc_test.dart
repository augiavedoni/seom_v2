import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:seom_v2/domain/vehicles/vehicle_failure.dart';
import 'package:seom_v2/infrastructure/auth/dto/seom_user_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_error_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_response_type.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';
import 'package:seom_v2/infrastructure/vehicles/dto/vehicle_dto.dart';
import 'package:seom_v2/infrastructure/vehicles/vehicle_repository.dart';

import '../../../infrastructure/core/http/seom_client_mock.dart';
import 'vehicle_watcher_bloc_test.mocks.dart';

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
    'VehicleWatcherBloc success case test',
    () {
      final seomClientMock = SeomClientMock(
        onGet: <T>() async => HTTPResponseType.ok(List.empty() as T),
        onPatch: <T>() async => HTTPResponseType.ok(vehicle.toJson() as T),
      );
      final vehicleRepository = VehicleRepository(
        seomClientMock,
        userDataSource,
      );

      test('Should receive empty KtList when we call getAll', () async {
        when(userDataSource.user).thenReturn(seomUser.toDomain());

        final result = await vehicleRepository.getAll();

        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => const KtList.empty()),
          const KtList.empty(),
        );
      });
    },
  );

  group(
    'VehicleWatcherBloc VehicleFailureUnexpected error case tests',
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
        'Should receive VehicleFailureUnexpected when we call getAll',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await vehicleRepository.getAll();

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
}
