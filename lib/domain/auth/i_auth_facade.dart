import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'seom_user.dart';
import 'value_objects/cuil.dart';
import 'value_objects/email_address.dart';
import 'value_objects/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required Cuil cuil,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Option<SeomUser> getSignedInUser();

  Future<void> signOut();
}
