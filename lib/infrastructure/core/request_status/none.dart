part of './request_status.dart';

class _RequestStatusNone<T> extends RequestStatus<T> {
  const _RequestStatusNone();

  @override
  void when({
    void Function()? none,
    required void Function() loading,
    required void Function(T? data) success,
    required void Function(SeomFailure error) failure,
  }) {
    assert(none != null, 'El callback none no debe ser null');
    none!();
  }

  @override
  R map<R>({
    R Function()? none,
    required R Function() loading,
    required R Function(T? data) success,
    required R Function(SeomFailure error) failure,
  }) {
    assert(none != null, 'El callback none no debe ser null');
    return none!();
  }

  @override
  void maybeWhen({
    void Function()? none,
    void Function()? loading,
    void Function(T? data)? success,
    void Function(SeomFailure error)? failure,
    required void Function() orElse,
  }) =>
      (none != null) ? none() : orElse();

  @override
  R maybeMap<R>({
    R Function()? none,
    R Function()? loading,
    R Function(T? data)? success,
    R Function(SeomFailure error)? failure,
    required R Function()? orElse,
  }) =>
      (none != null) ? none() : orElse!();

  @override
  String toString() => 'None';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _RequestStatusNone<T> && runtimeType == other.runtimeType);

  @override
  int get hashCode => runtimeType.hashCode;
}
