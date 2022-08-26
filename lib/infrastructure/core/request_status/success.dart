part of './request_status.dart';

class _RequestStatusSuccess<T> extends RequestStatus<T> {
  final T? data;

  const _RequestStatusSuccess([this.data]);

  @override
  void when({
    void Function()? none,
    required void Function() loading,
    required void Function(T? data) success,
    required void Function(SeomFailure error) failure,
  }) =>
      success(data);

  @override
  R map<R>({
    R Function()? none,
    required R Function() loading,
    required R Function(T? data) success,
    required R Function(SeomFailure error) failure,
  }) =>
      success(data);

  @override
  void maybeWhen({
    void Function()? none,
    void Function()? loading,
    void Function(T? data)? success,
    void Function(SeomFailure error)? failure,
    required void Function() orElse,
  }) =>
      (success != null) ? success(data) : orElse();

  @override
  R maybeMap<R>({
    R Function()? none,
    R Function()? loading,
    R Function(T? data)? success,
    R Function(SeomFailure error)? failure,
    required R Function()? orElse,
  }) =>
      (success != null) ? success(data) : orElse!();

  @override
  String toString() => 'Success';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is _RequestStatusSuccess<T> &&
          runtimeType == other.runtimeType &&
          (other.data == data));

  @override
  int get hashCode => runtimeType.hashCode;
}
