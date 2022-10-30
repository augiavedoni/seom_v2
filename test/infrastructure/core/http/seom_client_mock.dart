import 'package:seom_v2/infrastructure/core/http/dto/http_response_type.dart';
import 'package:seom_v2/infrastructure/core/http/seom_client.dart';

class SeomClientMock implements SeomClientContract {
  const SeomClientMock({
    this.onDelete,
    this.onGet,
    this.onPatch,
    this.onPost,
    this.onPut,
  });

  final Future<HTTPResponseType<T>> Function<T>()? onDelete;
  final Future<HTTPResponseType<T>> Function<T>()? onGet;
  final Future<HTTPResponseType<T>> Function<T>()? onPatch;
  final Future<HTTPResponseType<T>> Function<T>()? onPost;
  final Future<HTTPResponseType<T>> Function<T>()? onPut;

  @override
  Future<HTTPResponseType<T>> delete<T>(
    String path, {
    Map<String, String>? parameters,
  }) {
    if (onDelete == null) {
      throw UnimplementedError();
    }

    return onDelete!();
  }

  @override
  Future<HTTPResponseType<T>> get<T>(
    String path, {
    Map<String, String>? parameters,
  }) {
    if (onGet == null) {
      throw UnimplementedError();
    }

    return onGet!();
  }

  @override
  Future<HTTPResponseType<T>> patch<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) {
    if (onPatch == null) {
      throw UnimplementedError();
    }

    return onPatch!();
  }

  @override
  Future<HTTPResponseType<T>> post<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) async {
    if (onPost == null) {
      throw UnimplementedError();
    }

    return onPost!();
  }

  @override
  Future<HTTPResponseType<T>> put<T>(
    String path, {
    Map<String, dynamic>? parameters,
  }) {
    if (onPut == null) {
      throw UnimplementedError();
    }

    return onPut!();
  }
}
