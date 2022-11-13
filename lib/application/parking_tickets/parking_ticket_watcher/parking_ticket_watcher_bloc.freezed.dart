// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking_ticket_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ParkingTicketWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllStarted value) getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllStarted value)? getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllStarted value)? getAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingTicketWatcherEventCopyWith<$Res> {
  factory $ParkingTicketWatcherEventCopyWith(ParkingTicketWatcherEvent value,
          $Res Function(ParkingTicketWatcherEvent) then) =
      _$ParkingTicketWatcherEventCopyWithImpl<$Res, ParkingTicketWatcherEvent>;
}

/// @nodoc
class _$ParkingTicketWatcherEventCopyWithImpl<$Res,
        $Val extends ParkingTicketWatcherEvent>
    implements $ParkingTicketWatcherEventCopyWith<$Res> {
  _$ParkingTicketWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllStartedCopyWith<$Res> {
  factory _$$GetAllStartedCopyWith(
          _$GetAllStarted value, $Res Function(_$GetAllStarted) then) =
      __$$GetAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStartedCopyWithImpl<$Res>
    extends _$ParkingTicketWatcherEventCopyWithImpl<$Res, _$GetAllStarted>
    implements _$$GetAllStartedCopyWith<$Res> {
  __$$GetAllStartedCopyWithImpl(
      _$GetAllStarted _value, $Res Function(_$GetAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllStarted implements GetAllStarted {
  const _$GetAllStarted();

  @override
  String toString() {
    return 'ParkingTicketWatcherEvent.getAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
  }) {
    return getAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllStarted,
  }) {
    return getAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllStarted value) getAllStarted,
  }) {
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllStarted value)? getAllStarted,
  }) {
    return getAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllStarted value)? getAllStarted,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class GetAllStarted implements ParkingTicketWatcherEvent {
  const factory GetAllStarted() = _$GetAllStarted;
}

/// @nodoc
mixin _$ParkingTicketWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ParkingTicket> vehicles) loadSuccess,
    required TResult Function(ParkingTicketFailure vehicleFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult? Function(ParkingTicketFailure vehicleFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult Function(ParkingTicketFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketWatcherStateInitial value) initial,
    required TResult Function(ParkingTicketWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(ParkingTicketWatcherStateLoadSuccess value)
        loadSuccess,
    required TResult Function(ParkingTicketWatcherStateLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult? Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult? Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingTicketWatcherStateCopyWith<$Res> {
  factory $ParkingTicketWatcherStateCopyWith(ParkingTicketWatcherState value,
          $Res Function(ParkingTicketWatcherState) then) =
      _$ParkingTicketWatcherStateCopyWithImpl<$Res, ParkingTicketWatcherState>;
}

/// @nodoc
class _$ParkingTicketWatcherStateCopyWithImpl<$Res,
        $Val extends ParkingTicketWatcherState>
    implements $ParkingTicketWatcherStateCopyWith<$Res> {
  _$ParkingTicketWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParkingTicketWatcherStateInitialCopyWith<$Res> {
  factory _$$ParkingTicketWatcherStateInitialCopyWith(
          _$ParkingTicketWatcherStateInitial value,
          $Res Function(_$ParkingTicketWatcherStateInitial) then) =
      __$$ParkingTicketWatcherStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParkingTicketWatcherStateInitialCopyWithImpl<$Res>
    extends _$ParkingTicketWatcherStateCopyWithImpl<$Res,
        _$ParkingTicketWatcherStateInitial>
    implements _$$ParkingTicketWatcherStateInitialCopyWith<$Res> {
  __$$ParkingTicketWatcherStateInitialCopyWithImpl(
      _$ParkingTicketWatcherStateInitial _value,
      $Res Function(_$ParkingTicketWatcherStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParkingTicketWatcherStateInitial
    implements ParkingTicketWatcherStateInitial {
  const _$ParkingTicketWatcherStateInitial();

  @override
  String toString() {
    return 'ParkingTicketWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingTicketWatcherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ParkingTicket> vehicles) loadSuccess,
    required TResult Function(ParkingTicketFailure vehicleFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult? Function(ParkingTicketFailure vehicleFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult Function(ParkingTicketFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketWatcherStateInitial value) initial,
    required TResult Function(ParkingTicketWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(ParkingTicketWatcherStateLoadSuccess value)
        loadSuccess,
    required TResult Function(ParkingTicketWatcherStateLoadFailure value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult? Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult? Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ParkingTicketWatcherStateInitial
    implements ParkingTicketWatcherState {
  const factory ParkingTicketWatcherStateInitial() =
      _$ParkingTicketWatcherStateInitial;
}

/// @nodoc
abstract class _$$ParkingTicketWatcherStateLoadInProgressCopyWith<$Res> {
  factory _$$ParkingTicketWatcherStateLoadInProgressCopyWith(
          _$ParkingTicketWatcherStateLoadInProgress value,
          $Res Function(_$ParkingTicketWatcherStateLoadInProgress) then) =
      __$$ParkingTicketWatcherStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParkingTicketWatcherStateLoadInProgressCopyWithImpl<$Res>
    extends _$ParkingTicketWatcherStateCopyWithImpl<$Res,
        _$ParkingTicketWatcherStateLoadInProgress>
    implements _$$ParkingTicketWatcherStateLoadInProgressCopyWith<$Res> {
  __$$ParkingTicketWatcherStateLoadInProgressCopyWithImpl(
      _$ParkingTicketWatcherStateLoadInProgress _value,
      $Res Function(_$ParkingTicketWatcherStateLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParkingTicketWatcherStateLoadInProgress
    implements ParkingTicketWatcherStateLoadInProgress {
  const _$ParkingTicketWatcherStateLoadInProgress();

  @override
  String toString() {
    return 'ParkingTicketWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingTicketWatcherStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ParkingTicket> vehicles) loadSuccess,
    required TResult Function(ParkingTicketFailure vehicleFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult? Function(ParkingTicketFailure vehicleFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult Function(ParkingTicketFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketWatcherStateInitial value) initial,
    required TResult Function(ParkingTicketWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(ParkingTicketWatcherStateLoadSuccess value)
        loadSuccess,
    required TResult Function(ParkingTicketWatcherStateLoadFailure value)
        loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult? Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult? Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class ParkingTicketWatcherStateLoadInProgress
    implements ParkingTicketWatcherState {
  const factory ParkingTicketWatcherStateLoadInProgress() =
      _$ParkingTicketWatcherStateLoadInProgress;
}

/// @nodoc
abstract class _$$ParkingTicketWatcherStateLoadSuccessCopyWith<$Res> {
  factory _$$ParkingTicketWatcherStateLoadSuccessCopyWith(
          _$ParkingTicketWatcherStateLoadSuccess value,
          $Res Function(_$ParkingTicketWatcherStateLoadSuccess) then) =
      __$$ParkingTicketWatcherStateLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<ParkingTicket> vehicles});
}

/// @nodoc
class __$$ParkingTicketWatcherStateLoadSuccessCopyWithImpl<$Res>
    extends _$ParkingTicketWatcherStateCopyWithImpl<$Res,
        _$ParkingTicketWatcherStateLoadSuccess>
    implements _$$ParkingTicketWatcherStateLoadSuccessCopyWith<$Res> {
  __$$ParkingTicketWatcherStateLoadSuccessCopyWithImpl(
      _$ParkingTicketWatcherStateLoadSuccess _value,
      $Res Function(_$ParkingTicketWatcherStateLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$ParkingTicketWatcherStateLoadSuccess(
      null == vehicles
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as KtList<ParkingTicket>,
    ));
  }
}

/// @nodoc

class _$ParkingTicketWatcherStateLoadSuccess
    implements ParkingTicketWatcherStateLoadSuccess {
  const _$ParkingTicketWatcherStateLoadSuccess(this.vehicles);

  @override
  final KtList<ParkingTicket> vehicles;

  @override
  String toString() {
    return 'ParkingTicketWatcherState.loadSuccess(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingTicketWatcherStateLoadSuccess &&
            (identical(other.vehicles, vehicles) ||
                other.vehicles == vehicles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingTicketWatcherStateLoadSuccessCopyWith<
          _$ParkingTicketWatcherStateLoadSuccess>
      get copyWith => __$$ParkingTicketWatcherStateLoadSuccessCopyWithImpl<
          _$ParkingTicketWatcherStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ParkingTicket> vehicles) loadSuccess,
    required TResult Function(ParkingTicketFailure vehicleFailure) loadFailure,
  }) {
    return loadSuccess(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult? Function(ParkingTicketFailure vehicleFailure)? loadFailure,
  }) {
    return loadSuccess?.call(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult Function(ParkingTicketFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(vehicles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketWatcherStateInitial value) initial,
    required TResult Function(ParkingTicketWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(ParkingTicketWatcherStateLoadSuccess value)
        loadSuccess,
    required TResult Function(ParkingTicketWatcherStateLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult? Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult? Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ParkingTicketWatcherStateLoadSuccess
    implements ParkingTicketWatcherState {
  const factory ParkingTicketWatcherStateLoadSuccess(
          final KtList<ParkingTicket> vehicles) =
      _$ParkingTicketWatcherStateLoadSuccess;

  KtList<ParkingTicket> get vehicles;
  @JsonKey(ignore: true)
  _$$ParkingTicketWatcherStateLoadSuccessCopyWith<
          _$ParkingTicketWatcherStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParkingTicketWatcherStateLoadFailureCopyWith<$Res> {
  factory _$$ParkingTicketWatcherStateLoadFailureCopyWith(
          _$ParkingTicketWatcherStateLoadFailure value,
          $Res Function(_$ParkingTicketWatcherStateLoadFailure) then) =
      __$$ParkingTicketWatcherStateLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({ParkingTicketFailure vehicleFailure});

  $ParkingTicketFailureCopyWith<$Res> get vehicleFailure;
}

/// @nodoc
class __$$ParkingTicketWatcherStateLoadFailureCopyWithImpl<$Res>
    extends _$ParkingTicketWatcherStateCopyWithImpl<$Res,
        _$ParkingTicketWatcherStateLoadFailure>
    implements _$$ParkingTicketWatcherStateLoadFailureCopyWith<$Res> {
  __$$ParkingTicketWatcherStateLoadFailureCopyWithImpl(
      _$ParkingTicketWatcherStateLoadFailure _value,
      $Res Function(_$ParkingTicketWatcherStateLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleFailure = null,
  }) {
    return _then(_$ParkingTicketWatcherStateLoadFailure(
      null == vehicleFailure
          ? _value.vehicleFailure
          : vehicleFailure // ignore: cast_nullable_to_non_nullable
              as ParkingTicketFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParkingTicketFailureCopyWith<$Res> get vehicleFailure {
    return $ParkingTicketFailureCopyWith<$Res>(_value.vehicleFailure, (value) {
      return _then(_value.copyWith(vehicleFailure: value));
    });
  }
}

/// @nodoc

class _$ParkingTicketWatcherStateLoadFailure
    implements ParkingTicketWatcherStateLoadFailure {
  const _$ParkingTicketWatcherStateLoadFailure(this.vehicleFailure);

  @override
  final ParkingTicketFailure vehicleFailure;

  @override
  String toString() {
    return 'ParkingTicketWatcherState.loadFailure(vehicleFailure: $vehicleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParkingTicketWatcherStateLoadFailure &&
            (identical(other.vehicleFailure, vehicleFailure) ||
                other.vehicleFailure == vehicleFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParkingTicketWatcherStateLoadFailureCopyWith<
          _$ParkingTicketWatcherStateLoadFailure>
      get copyWith => __$$ParkingTicketWatcherStateLoadFailureCopyWithImpl<
          _$ParkingTicketWatcherStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<ParkingTicket> vehicles) loadSuccess,
    required TResult Function(ParkingTicketFailure vehicleFailure) loadFailure,
  }) {
    return loadFailure(vehicleFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult? Function(ParkingTicketFailure vehicleFailure)? loadFailure,
  }) {
    return loadFailure?.call(vehicleFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<ParkingTicket> vehicles)? loadSuccess,
    TResult Function(ParkingTicketFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(vehicleFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParkingTicketWatcherStateInitial value) initial,
    required TResult Function(ParkingTicketWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(ParkingTicketWatcherStateLoadSuccess value)
        loadSuccess,
    required TResult Function(ParkingTicketWatcherStateLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult? Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult? Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParkingTicketWatcherStateInitial value)? initial,
    TResult Function(ParkingTicketWatcherStateLoadInProgress value)?
        loadInProgress,
    TResult Function(ParkingTicketWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(ParkingTicketWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ParkingTicketWatcherStateLoadFailure
    implements ParkingTicketWatcherState {
  const factory ParkingTicketWatcherStateLoadFailure(
          final ParkingTicketFailure vehicleFailure) =
      _$ParkingTicketWatcherStateLoadFailure;

  ParkingTicketFailure get vehicleFailure;
  @JsonKey(ignore: true)
  _$$ParkingTicketWatcherStateLoadFailureCopyWith<
          _$ParkingTicketWatcherStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
