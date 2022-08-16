import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/seom_user.dart';
import '../../domain/auth/value_objects/password.dart';
import '../../domain/auth/value_objects/email_address.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/value_objects/unique_id.dart';

@Injectable(as: IAuthFacade)
@lazySingleton
class FirebaseAuthFacade implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    // final String nameString = name.getOrCrash();
    // final String emailAddressString = emailAddress.getOrCrash();
    // final String passwordString = password.getOrCrash();

    // try {
    //   await _firebaseAuth.createUserWithEmailAndPassword(
    //     email: emailAddressString,
    //     password: passwordString,
    //   );

    //   await _firebaseAuth.currentUser?.updateDisplayName(nameString);

    //   return right(unit);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == "email-already-in-use") {
    //     return left(const AuthFailure.emailAlreadyInUse());
    //   } else {
    //     return left(const AuthFailure.serverError());
    //   }
    // }

    return right(unit);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    // final String emailAddressString = emailAddress.getOrCrash();
    // final String passwordString = password.getOrCrash();

    // try {
    //   await _firebaseAuth.signInWithEmailAndPassword(
    //     email: emailAddressString,
    //     password: passwordString,
    //   );

    //   return right(unit);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == "wrong-password" || e.code == "user-not-found") {
    //     return left(const AuthFailure.invalidEmailAndPasswordCombination());
    //   } else {
    //     return left(const AuthFailure.serverError());
    //   }
    // }

    return right(unit);
  }

  @override
  Option<SeomUser> getSignedInUser() => optionOf(
        SeomUser(
          id: UniqueId(),
        ),
      );

  @override
  Future<void> signOut() async {}
}
