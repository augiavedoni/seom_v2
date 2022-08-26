import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../../request_status/request_status.dart';
import 'http_error_dto.dart';

abstract class HTTPResponseType<T> {
  const HTTPResponseType();

  factory HTTPResponseType.ok(T response) = _HTTPResponseTypeOk<T>;
  factory HTTPResponseType.error(HTTPErrorDto error, int code) =
      _HTTPResponseTypeError<T>;

  static HTTPResponseType<T> fromResponse<T>(Response response) {
    final decoded = (response.body.isEmpty) ? null : json.decode(response.body);

    if (response.statusCode >= 300) {
      return HTTPResponseType.error(
        HTTPErrorDto.fromJson(decoded),
        response.statusCode,
      );
    }

    return HTTPResponseType<T>.ok(decoded as T);
  }

  FutureOr<RequestStatus<R>> mapSuccess<R>(
    FutureOr<RequestStatus<R>> Function(T body) onSuccess,
  ) {
    return map(
      ok: onSuccess,
      error: (_, __) => RequestStatus.failure(
        GenericFailure.unknown(),
      ),
    );
  }

  void when({
    required void Function(T body) ok,
    required void Function(HTTPErrorDto errorDto, int code) error,
  });

  R map<R>({
    required R Function(T body) ok,
    required R Function(HTTPErrorDto errorDto, int code) error,
  });
}

class _HTTPResponseTypeOk<T> extends HTTPResponseType<T> {
  const _HTTPResponseTypeOk(this.response);

  final T response;

  @override
  void when({
    required void Function(T body) ok,
    required void Function(HTTPErrorDto errorDto, int code) error,
  }) =>
      ok(response);

  @override
  R map<R>({
    required R Function(T body) ok,
    required R Function(HTTPErrorDto errorDto, int code) error,
  }) =>
      ok(response);
}

class _HTTPResponseTypeError<T> extends HTTPResponseType<T> {
  const _HTTPResponseTypeError(this.error, this.code);

  final HTTPErrorDto error;
  final int code;

  @override
  void when({
    required void Function(T body) ok,
    required void Function(HTTPErrorDto errorDto, int code) error,
  }) =>
      error(this.error, code);

  @override
  R map<R>({
    required R Function(T body) ok,
    required R Function(HTTPErrorDto errorDto, int code) error,
  }) =>
      error(this.error, code);
}
