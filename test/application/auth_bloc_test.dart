import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:seom_v2/application/auth/auth_bloc.dart';
import 'package:seom_v2/domain/auth/auth_failure.dart';
import 'package:seom_v2/domain/auth/i_auth_facade.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';

class MockSeomAuthFacade extends Mock implements IAuthFacade {}

class MockSeomuser extends Mock implements SeomUser {}

void main() {
  const initialState = TypeMatcher<Initial>();
  const authenticatedState = TypeMatcher<Authenticated>();
  const unuthenticatedState = TypeMatcher<Unauthenticated>();

  group(
    'AuthBloc success cases tests',
    () {
      late IAuthFacade authFacade;

      setUp(() {
        authFacade = MockSeomAuthFacade();
      });

      AuthBloc getBloc() => AuthBloc(authFacade);

      void setUpSignedInUser(Option<SeomUser> seomUserOption) =>
          when(authFacade.getSignedInUser).thenReturn(seomUserOption);

      void setSignOut(Either<AuthFailure, Unit> result) =>
          when(authFacade.signOut).thenAnswer((_) async => result);

      test(
        'Should receive state Initial when creating the BLoC',
        () {
          final authBloc = getBloc();

          expect(authBloc.state, initialState);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'Should emit Authenticated state'
        'when AuthCheckedRequested event is added',
        build: getBloc,
        setUp: () => setUpSignedInUser(optionOf<SeomUser>(MockSeomuser())),
        act: (bloc) => bloc.add(
          const AuthEvent.authCheckedRequested(),
        ),
        expect: () => isA<Iterable<AuthState>>().having(
          (p0) => p0.first,
          'State emitted is Authenticated',
          authenticatedState,
        ),
      );

      blocTest<AuthBloc, AuthState>(
        'Should emit Unauthenticated state'
        'when AuthCheckedRequested event is added',
        build: getBloc,
        setUp: () => setUpSignedInUser(optionOf<SeomUser>(null)),
        act: (bloc) => bloc.add(
          const AuthEvent.authCheckedRequested(),
        ),
        expect: () => isA<Iterable<AuthState>>().having(
          (p0) => p0.first,
          'State emitted is Unauthenticated',
          unuthenticatedState,
        ),
      );

      blocTest<AuthBloc, AuthState>(
        'Should emit Unauthenticated state'
        'when SignedOut event is added',
        build: getBloc,
        setUp: () => setSignOut(right(unit)),
        act: (bloc) => bloc.add(
          const AuthEvent.signedOut(),
        ),
        expect: () => isA<Iterable<AuthState>>().having(
          (p0) => p0.first,
          'First state emitted is Initial',
          unuthenticatedState,
        ),
      );
    },
  );
}
