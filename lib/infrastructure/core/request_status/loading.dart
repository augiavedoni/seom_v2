part of './request_status.dart';

class _RequestStatusLoading<T> extends RequestStatus<T> {
  const _RequestStatusLoading();

  @override
  void when({
    void Function()? none,
    required void Function() loading,
    required void Function(T? data) success,
    required void Function(SeomFailure error) failure,
  }) =>
      loading();

  @override
  R map<R>({
    R Function()? none,
    required R Function() loading,
    required R Function(T? data) success,
    required R Function(SeomFailure error) failure,
  }) =>
      loading();

  @override
  void maybeWhen({
    void Function()? none,
    void Function()? loading,
    void Function(T? data)? success,
    void Function(SeomFailure error)? failure,
    required void Function() orElse,
  }) =>
      (loading != null) ? loading() : orElse();

  @override
  R maybeMap<R>({
    R Function()? none,
    R Function()? loading,
    R Function(T? data)? success,
    R Function(SeomFailure error)? failure,
    required R Function()? orElse,
  }) =>
      (loading != null) ? loading() : orElse!();

  @override
  String toString() => 'Loading';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _RequestStatusLoading<T> && runtimeType == other.runtimeType);

  @override
  int get hashCode => runtimeType.hashCode;
}
