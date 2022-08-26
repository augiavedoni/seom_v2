// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HTTPErrorDto _$HTTPErrorDtoFromJson(Map<String, dynamic> json) => HTTPErrorDto(
      path: json['path'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$HTTPErrorDtoToJson(HTTPErrorDto instance) =>
    <String, dynamic>{
      'path': instance.path,
      'error': instance.error,
      'message': instance.message,
      'status': instance.status,
    };
