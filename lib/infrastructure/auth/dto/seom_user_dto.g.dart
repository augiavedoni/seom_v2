// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seom_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeomUserDTO _$$_SeomUserDTOFromJson(Map<String, dynamic> json) =>
    _$_SeomUserDTO(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      cuil: json['cuil'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_SeomUserDTOToJson(_$_SeomUserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'cuil': instance.cuil,
      'birthdate': instance.birthdate.toIso8601String(),
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
