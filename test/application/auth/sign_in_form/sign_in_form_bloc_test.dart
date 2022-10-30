import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:seom_v2/domain/auth/auth_failure.dart';
import 'package:seom_v2/domain/auth/value_objects/email_address.dart';
import 'package:seom_v2/domain/auth/value_objects/password.dart';
import 'package:seom_v2/infrastructure/auth/dto/seom_user_dto.dart';
import 'package:seom_v2/infrastructure/auth/seom_auth_facade.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_error_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_response_type.dart';
import 'package:seom_v2/infrastructure/datasource/token_data_source.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';

import '../../../infrastructure/core/http/seom_client_mock.dart';
import 'sign_in_form_bloc_test.mocks.dart';

@GenerateMocks([UserDataSource, TokenDataSource])
main() {
  final userDataSource = MockUserDataSource();
  final tokenDataSource = MockTokenDataSource();
  final seomUser = SeomUserDto(
    id: 1,
    cuil: '11111111111',
    firstName: 'Test',
    lastName: 'Test',
    birthdate: DateTime.now(),
    refreshToken: 'Test',
    token: 'Test',
  );
  final emailAddress = EmailAddress('test@test.com');
  final password = Password('Test12345');

  group(
    'SignInFormBloc success case test',
    () {
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.ok(seomUser.toJson() as T),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive unit when call signInWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.signInWithEmailAndPassword(
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isRight(), true);
          expect(result.getOrElse(() => unit), isA<Unit>());
        },
      );
    },
  );

  group(
    'SignInFormBloc InvalidEmailAndPasswordCombination error case test',
    () {
      const error = HTTPErrorDto(
        error: 'test',
        message: 'Bad credentials',
        path: 'test',
        status: 401,
      );
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.error(error, 401),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive InvalidEmailAndPasswordCombination'
        'when call signInWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.signInWithEmailAndPassword(
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<InvalidEmailAndPasswordCombination>(),
          );
        },
      );
    },
  );

  group(
    'SignInFormBloc ServerError error case test',
    () {
      const error = HTTPErrorDto(
        error: 'test',
        message: 'test',
        path: 'test',
        status: 500,
      );
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.error(error, 500),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive ServerError when call signInWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.signInWithEmailAndPassword(
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<ServerError>(),
          );
        },
      );
    },
  );
}
