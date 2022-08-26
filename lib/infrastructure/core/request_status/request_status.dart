import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';

import '../http/dto/http_error_dto.dart';

part './none.dart';
part './loading.dart';
part './success.dart';
part './failure.dart';
part 'seom_failure.dart';

abstract class RequestStatus<T> {
  const RequestStatus();
  const factory RequestStatus.none() = _RequestStatusNone<T>;
  const factory RequestStatus.loading() = _RequestStatusLoading<T>;
  const factory RequestStatus.success([T data]) = _RequestStatusSuccess<T>;
  const factory RequestStatus.failure(SeomFailure error) =
      _RequestStatusFailure<T>;

  static Future<RequestStatus<T>> fromResult<T>(
    FutureOr<RequestStatus<T>> Function() result, {
    FutureOr<SeomFailure> Function(dynamic)? onFailure,
  }) async {
    try {
      final status = await result();
      return status;
    } on SeomFailure catch (e) {
      return RequestStatus<T>.failure(e);
    } on Exception catch (e) {
      if (e is SocketException ||
          e is TimeoutException ||
          e is HandshakeException) {
        return RequestStatus<T>.failure(GenericFailure.noInternet());
      }

      if (onFailure != null) {
        final error = await onFailure(e);
        return RequestStatus<T>.failure(error);
      }

      return RequestStatus<T>.failure(GenericFailure.unknown());
    }
  }

  bool get isNone => this is _RequestStatusNone<T>;
  bool get isLoading => this is _RequestStatusLoading<T>;
  bool get isSuccess => this is _RequestStatusSuccess<T>;
  bool get isError => this is _RequestStatusFailure<T>;

  T? get value => maybeMap(
        success: (data) => data,
        orElse: () => null,
      );

  SeomFailure? get failure => maybeMap(
        failure: (failure) => failure,
        orElse: () => null,
      );

  void when({
    void Function()? none,
    required void Function() loading,
    required void Function(T? data) success,
    required void Function(SeomFailure error) failure,
  });

  R map<R>({
    R Function()? none,
    required R Function() loading,
    required R Function(T? data) success,
    required R Function(SeomFailure error) failure,
  });

  void maybeWhen({
    void Function()? none,
    void Function()? loading,
    void Function(T? data)? success,
    void Function(SeomFailure error)? failure,
    required void Function() orElse,
  });

  R maybeMap<R>({
    R Function()? none,
    R Function()? loading,
    R Function(T? data)? success,
    R Function(SeomFailure error)? failure,
    required R Function()? orElse,
  });
}
