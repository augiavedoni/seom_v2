import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/auth/value_objects/cuil.dart';
import 'package:seom_v2/domain/auth/value_objects/first_name.dart';
import 'package:seom_v2/domain/auth/value_objects/last_name.dart';
import 'package:seom_v2/domain/auth/value_objects/refresh_token.dart';
import 'package:seom_v2/domain/auth/value_objects/stripe_id.dart';
import 'package:seom_v2/domain/auth/value_objects/token.dart';

part 'seom_user.freezed.dart';

@freezed
class SeomUser with _$SeomUser {
  const factory SeomUser({
    required int id,
    required FirstName firstName,
    required LastName lastName,
    required Cuil cuil,
    required DateTime birthdate,
    required Token token,
    required RefreshToken refreshToken,
    required StripeId stripeId,
  }) = _SeomUser;
}
