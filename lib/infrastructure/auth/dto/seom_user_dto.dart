// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/seom_user.dart';
import '../../../domain/auth/value_objects/cuil.dart';
import '../../../domain/auth/value_objects/first_name.dart';
import '../../../domain/auth/value_objects/last_name.dart';
import '../../../domain/auth/value_objects/refresh_token.dart';
import '../../../domain/auth/value_objects/token.dart';

part 'seom_user_dto.freezed.dart';
part 'seom_user_dto.g.dart';

@freezed
abstract class SeomUserDTO implements _$SeomUserDTO {
  const SeomUserDTO._();

  @JsonSerializable(explicitToJson: true)
  const factory SeomUserDTO({
    required int id,
    required String firstName,
    required String lastName,
    required String cuil,
    required DateTime birthdate,
    required String token,
    required String refreshToken,
  }) = _SeomUserDTO;

  factory SeomUserDTO.fromDomain(SeomUser user) {
    return SeomUserDTO(
      id: user.id,
      firstName: user.firstName.getOrCrash(),
      lastName: user.lastName.getOrCrash(),
      cuil: user.cuil.getOrCrash(),
      birthdate: user.birthdate,
      token: user.token.getOrCrash(),
      refreshToken: user.refreshToken.getOrCrash(),
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
    );
  }

  factory SeomUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SeomUserDTOFromJson(json);
}
