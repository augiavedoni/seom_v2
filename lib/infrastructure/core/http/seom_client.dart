import 'dart:convert';

import 'package:http_interceptor/http_interceptor.dart';
import 'package:injectable/injectable.dart';

import 'dto/http_response_type.dart';
import 'seom_interceptor.dart';

abstract class SeomClientContract {
  Future<HTTPResponseType<T>> get<T>(
    String path, {
    Map<String, String>? parameters,
  });

  Future<HTTPResponseType<T>> post<T>(
    String path, {
    Map<String, dynamic>? parameters,
  });

  Future<HTTPResponseType<T>> put<T>(
    String path, {
    Map<String, dynamic>? parameters,
  });

  Future<HTTPResponseType<T>> patch<T>(
    String path, {
    Map<String, dynamic>? parameters,
  });

  Future<HTTPResponseType<T>> delete<T>(
    String path, {
    Map<String, String>? parameters,
  });
}

@Injectable(as: SeomClientContract)
class SeomClient implements SeomClientContract {
  static const _serverUrl = "http://localhost:8080/api/";

  SeomClient()
      : _client = InterceptedHttp.build(
          interceptors: [SeomInterceptor()],
          requestTimeout: const Duration(seconds: 30),
        );

  final InterceptedHttp _client;

  @override
  Future<HTTPResponseType<T>> get<T>(
    String path, {
    Map<String, String>? parameters,
  }) async {
    final url = '$_serverUrl$path';
    final response = await _client.get(
      Uri.parse(url),
      params: parameters,
    );

    return HTTPResponseType.fromResponse<T>(response);
  }

  @override
  Future<HTTPResponseType<T>> post<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) async {
    final url = '$_serverUrl$path';
    final response = await _client.post(
      Uri.parse(url),
      body: json.encode(parameters),
    );

    return HTTPResponseType.fromResponse<T>(response);
  }

  @override
  Future<HTTPResponseType<T>> put<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) async {
    final url = '$_serverUrl$path';
    final response = await _client.put(
      Uri.parse(url),
      body: json.encode(parameters),
    );

    return HTTPResponseType.fromResponse<T>(response);
  }

  @override
  Future<HTTPResponseType<T>> patch<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) async {
    final url = '$_serverUrl$path';
    final response = await _client.patch(
      Uri.parse(url),
      body: json.encode(parameters),
    );

    return HTTPResponseType.fromResponse<T>(response);
  }

  @override
  Future<HTTPResponseType<T>> delete<T>(
    String path, {
    Map<String, String>? parameters,
  }) async {
    final url = '$_serverUrl$path';
    final response = await _client.delete(
      Uri.parse(url),
      params: parameters,
    );

    return HTTPResponseType.fromResponse<T>(response);
  }
}
