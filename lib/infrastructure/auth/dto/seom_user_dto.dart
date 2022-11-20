// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';
import 'package:seom_v2/domain/auth/value_objects/cuil.dart';
import 'package:seom_v2/domain/auth/value_objects/first_name.dart';
import 'package:seom_v2/domain/auth/value_objects/last_name.dart';
import 'package:seom_v2/domain/auth/value_objects/refresh_token.dart';
import 'package:seom_v2/domain/auth/value_objects/stripe_id.dart';
import 'package:seom_v2/domain/auth/value_objects/token.dart';

part 'seom_user_dto.freezed.dart';
part 'seom_user_dto.g.dart';

@freezed
abstract class SeomUserDto implements _$SeomUserDto {
  const SeomUserDto._();

  @JsonSerializable(explicitToJson: true)
  const factory SeomUserDto({
    required int id,
    required String firstName,
    required String lastName,
    required String cuil,
    required DateTime birthdate,
    required String token,
    required String refreshToken,
    required String stripeId,
  }) = _SeomUserDTO;

  factory SeomUserDto.fromDomain(SeomUser user) {
    return SeomUserDto(
      id: user.id,
      firstName: user.firstName.getOrCrash(),
      lastName: user.lastName.getOrCrash(),
      cuil: user.cuil.getOrCrash(),
      birthdate: user.birthdate,
      token: user.token.getOrCrash(),
      refreshToken: user.refreshToken.getOrCrash(),
      stripeId: user.stripeId.getOrCrash(),
    );
  }

  SeomUser toDomain() {
    return SeomUser(
      id: id,
      firstName: FirstName(firstName),
      lastName: LastName(lastName),
      cuil: Cuil(cuil),
      birthdate: birthdate,
      token: Token(token),
      refreshToken: RefreshToken(refreshToken),
      stripeId: StripeId(stripeId),
    );
  }

  factory SeomUserDto.fromJson(Map<String, dynamic> json) =>
      _$SeomUserDtoFromJson(json);
}
