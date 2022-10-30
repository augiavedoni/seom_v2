import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';
import 'package:seom_v2/infrastructure/auth/dto/seom_user_dto.dart';
import 'package:seom_v2/infrastructure/auth/seom_auth_facade.dart';
import 'package:seom_v2/infrastructure/datasource/token_data_source.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';

import '../../infrastructure/core/http/seom_client_mock.dart';
import 'auth_bloc_test.mocks.dart';

@GenerateMocks([UserDataSource, TokenDataSource])
main() {
  final userDataSource = MockUserDataSource();
  final tokenDataSource = MockTokenDataSource();
  const seomClientMock = SeomClientMock();
  final seomAuthFacade = SeomAuthFacade(
    seomClientMock,
    userDataSource,
    tokenDataSource,
  );
  final seomUser = SeomUserDto(
    id: 1,
    cuil: '11111111111',
    firstName: 'Test',
    lastName: 'Test',
    birthdate: DateTime.now(),
    refreshToken: 'Test',
    token: 'Test',
  );

  group(
    'AuthBloc success cases tests',
    () {
      test(
        'Should receive an user when call getSignedInUser',
        () {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = seomAuthFacade.getSignedInUser();

          expect(result.isSome(), true);
          expect(result.getOrElse(() => seomUser.toDomain()), isA<SeomUser>());
        },
      );

      test(
        'Should not receive an user when call getSignedInUser',
        () {
          when(userDataSource.user).thenReturn(null);

          final result = seomAuthFacade.getSignedInUser();

          expect(result.isNone(), true);
          expect(
            result.fold(() => null, (seomUser) => seomUser),
            isNull,
          );
        },
      );
    },
  );
}
