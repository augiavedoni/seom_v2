import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/seom_user.dart';
import '../../domain/auth/value_objects/cuil.dart';
import '../../domain/auth/value_objects/email_address.dart';
import '../../domain/auth/value_objects/password.dart';
import '../core/http/seom_client.dart';
import '../datasource/user_data_source.dart';
import 'dto/seom_user_dto.dart';

@Injectable(as: IAuthFacade)
@lazySingleton
class SeomAuthFacade implements IAuthFacade {
  final SeomClient _client;
  final UserDataSource _userDataSource;

  SeomAuthFacade(
    this._client,
    this._userDataSource,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Cuil cuil,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String cuilString = cuil.getOrCrash();
    final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();

    final response = await _client.post(
      "auth/signup",
      parameters: {
        "email": emailAddressString,
        "password": passwordString,
        "firstName": "Augusto",
        "lastName": "Giavedoni",
        "cuil": cuilString,
        "birthdate": "2000-02-20",
      },
    );

    return response.map(
      ok: (response) {
        final SeomUserDTO user = SeomUserDTO.fromJson(response);

        _userDataSource.user = user.toDomain();

        return right(unit);
      },
      error: (error, statusCode) {
        if (statusCode == 400) {
          switch (error.error) {
            case "email-already-in-use":
              return left(const AuthFailure.emailAlreadyInUse());

            case "cuil-already-registered":
              return left(const AuthFailure.cuilAlreadyInUse());
          }
        }

        return left(const AuthFailure.serverError());
      },
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final String emailAddressString = emailAddress.getOrCrash();
    final String passwordString = password.getOrCrash();

    final response = await _client.post(
      "auth/signin",
      parameters: {
        "email": emailAddressString,
        "password": passwordString,
      },
    );

    return response.map(
      ok: (response) {
        //TODO: mapear campos faltantes
        final SeomUserDTO user = SeomUserDTO.fromJson(response);

        _userDataSource.user = user.toDomain();

        return right(unit);
      },
      error: (error, statusCode) {
        if (statusCode == 401 && error.message == "Bad credentials") {
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        }

        return left(const AuthFailure.serverError());
      },
    );
  }

  @override
  Option<SeomUser> getSignedInUser() => optionOf(
        _userDataSource.user,
      );

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    final response = await _client.post(
      "auth/logout",
      parameters: {
        "userId": _userDataSource.user!.id,
      },
    );

    return response.map(
      ok: (_) {
        _userDataSource.clearData();

        return right(unit);
      },
      error: (_, __) => left(const AuthFailure.serverError()),
    );
  }
}
