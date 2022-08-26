import 'package:json_annotation/json_annotation.dart';

part 'http_error_dto.g.dart';

@JsonSerializable()
class HTTPErrorDto {
  final String? path;
  final String? error;
  final String? message;
  final int? status;

  const HTTPErrorDto({
    required this.path,
    required this.error,
    required this.message,
    required this.status,
  });

  factory HTTPErrorDto.fromJson(Map<String, dynamic> json) =>
      _$HTTPErrorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HTTPErrorDtoToJson(this);
}
