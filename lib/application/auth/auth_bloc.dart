import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/seom_user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(
    this._authFacade,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async => await event.map<FutureOr<void>>(
        authCheckedRequested: (event) {
          final Option<SeomUser> userOption = _authFacade.getSignedInUser();

          emit(
            userOption.fold(
              () => const AuthState.unauthenticated(),
              (_) => const AuthState.authenticated(),
            ),
          );
        },
        signedOut: (event) async {
          await _authFacade.signOut();
          emit(
            const AuthState.unauthenticated(),
          );
        },
      ),
    );
  }
}
