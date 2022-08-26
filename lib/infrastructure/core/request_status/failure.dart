part of './request_status.dart';

class _RequestStatusFailure<T> extends RequestStatus<T> {
  const _RequestStatusFailure(this.error);

  final SeomFailure error;

  @override
  void when({
    void Function()? none,
    required void Function() loading,
    required void Function(T? data) success,
    required void Function(SeomFailure error) failure,
  }) =>
      failure(error);

  @override
  R map<R>({
    R Function()? none,
    required R Function() loading,
    required R Function(T? data) success,
    required R Function(SeomFailure error) failure,
  }) =>
      failure(error);

  @override
  void maybeWhen({
    void Function()? none,
    void Function()? loading,
    void Function(T? data)? success,
    void Function(SeomFailure error)? failure,
    required void Function() orElse,
  }) =>
      (failure != null) ? failure(error) : orElse();

  @override
  R maybeMap<R>({
    R Function()? none,
    R Function()? loading,
    R Function(T? data)? success,
    R Function(SeomFailure error)? failure,
    required R Function()? orElse,
  }) =>
      (failure != null) ? failure(error) : orElse!();

  @override
  String toString() => 'SeomFailure';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _RequestStatusFailure<T> &&
          runtimeType == other.runtimeType &&
          (other.failure == failure));

  @override
  int get hashCode => runtimeType.hashCode;
}
