import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:seom_v2/domain/auth/auth_failure.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';
import 'package:seom_v2/domain/auth/value_objects/email_address.dart';
import 'package:seom_v2/domain/auth/value_objects/password.dart';
import 'package:seom_v2/infrastructure/auth/dto/seom_user_dto.dart';
import 'package:seom_v2/infrastructure/auth/seom_auth_facade.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_error_dto.dart';
import 'package:seom_v2/infrastructure/core/http/dto/http_response_type.dart';
import 'package:seom_v2/infrastructure/datasource/token_data_source.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';

import '../core/http/seom_client_mock.dart';
import 'seom_auth_facade_test.mocks.dart';

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
    stripeId: 'my-really-long-id',
  );
  final emailAddress = EmailAddress('test@test.com');
  final password = Password('Test12345');

  group(
    'SeomAuthFacade success cases tests',
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

      test(
        'Should receive unit when call signOut',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await seomAuthFacade.signOut();

          expect(result.isRight(), true);
          expect(result.getOrElse(() => unit), isA<Unit>());
        },
      );

      test(
        'Should receive unit when call registerWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.registerWithEmailAndPassword(
            cuil: seomUser.toDomain().cuil,
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isRight(), true);
          expect(result.getOrElse(() => unit), isA<Unit>());
        },
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
    'SeomAuthFacade ServerError error test cases',
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
        'Should receive ServerError when call signOut',
        () async {
          when(userDataSource.user).thenReturn(seomUser.toDomain());

          final result = await seomAuthFacade.signOut();

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<ServerError>(),
          );
        },
      );

      test(
        'Should receive ServerError when call registerWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.registerWithEmailAndPassword(
            cuil: seomUser.toDomain().cuil,
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

  group(
    'SeomAuthFacade EmailAlreadyInUse error case test',
    () {
      const error = HTTPErrorDto(
        error: 'email-already-in-use',
        message: 'test',
        path: 'test',
        status: 400,
      );
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.error(error, 400),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive EmailAlreadyInUse when call registerWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.registerWithEmailAndPassword(
            cuil: seomUser.toDomain().cuil,
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<EmailAlreadyInUse>(),
          );
        },
      );
    },
  );

  group(
    'SeomAuthFacade CuilAlreadyInUse error case test',
    () {
      const error = HTTPErrorDto(
        error: 'cuil-already-registered',
        message: 'test',
        path: 'test',
        status: 400,
      );
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.error(error, 400),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive CuilAlreadyInUse when call registerWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.registerWithEmailAndPassword(
            cuil: seomUser.toDomain().cuil,
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<CuilAlreadyInUse>(),
          );
        },
      );
    },
  );

  group(
    'SeomAuthFacade CitizenNotFound error case test',
    () {
      const error = HTTPErrorDto(
        error: 'citizen-not-found',
        message: 'test',
        path: 'test',
        status: 404,
      );
      final seomClientMock = SeomClientMock(
        onPost: <T>() async => HTTPResponseType.error(error, 404),
      );
      final seomAuthFacade = SeomAuthFacade(
        seomClientMock,
        userDataSource,
        tokenDataSource,
      );

      test(
        'Should receive CitizenNotFound when call registerWithEmailAndPassword',
        () async {
          final result = await seomAuthFacade.registerWithEmailAndPassword(
            cuil: seomUser.toDomain().cuil,
            emailAddress: emailAddress,
            password: password,
          );

          expect(result.isLeft(), true);
          expect(
            result.fold((failure) => failure, (_) => null),
            isA<CitizenNotFound>(),
          );
        },
      );
    },
  );

  group(
    'SeomAuthFacade InvalidEmailAndPasswordCombination error case test',
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
}
