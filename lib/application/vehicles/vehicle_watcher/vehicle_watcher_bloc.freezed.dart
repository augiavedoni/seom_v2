// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vehicle_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VehicleWatcherEvent {
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
abstract class $VehicleWatcherEventCopyWith<$Res> {
  factory $VehicleWatcherEventCopyWith(
          VehicleWatcherEvent value, $Res Function(VehicleWatcherEvent) then) =
      _$VehicleWatcherEventCopyWithImpl<$Res, VehicleWatcherEvent>;
}

/// @nodoc
class _$VehicleWatcherEventCopyWithImpl<$Res, $Val extends VehicleWatcherEvent>
    implements $VehicleWatcherEventCopyWith<$Res> {
  _$VehicleWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$VehicleWatcherEventCopyWithImpl<$Res, _$GetAllStarted>
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
    return 'VehicleWatcherEvent.getAllStarted()';
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

abstract class GetAllStarted implements VehicleWatcherEvent {
  const factory GetAllStarted() = _$GetAllStarted;
}

/// @nodoc
mixin _$VehicleWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Vehicle> vehicles) loadSuccess,
    required TResult Function(VehicleFailure vehicleFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult? Function(VehicleFailure vehicleFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult Function(VehicleFailure vehicleFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VehicleWatcherStateInitial value) initial,
    required TResult Function(VehicleWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(VehicleWatcherStateLoadSuccess value) loadSuccess,
    required TResult Function(VehicleWatcherStateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleWatcherStateInitial value)? initial,
    TResult? Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult? Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(VehicleWatcherStateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleWatcherStateInitial value)? initial,
    TResult Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(VehicleWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleWatcherStateCopyWith<$Res> {
  factory $VehicleWatcherStateCopyWith(
          VehicleWatcherState value, $Res Function(VehicleWatcherState) then) =
      _$VehicleWatcherStateCopyWithImpl<$Res, VehicleWatcherState>;
}

/// @nodoc
class _$VehicleWatcherStateCopyWithImpl<$Res, $Val extends VehicleWatcherState>
    implements $VehicleWatcherStateCopyWith<$Res> {
  _$VehicleWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VehicleWatcherStateInitialCopyWith<$Res> {
  factory _$$VehicleWatcherStateInitialCopyWith(
          _$VehicleWatcherStateInitial value,
          $Res Function(_$VehicleWatcherStateInitial) then) =
      __$$VehicleWatcherStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleWatcherStateInitialCopyWithImpl<$Res>
    extends _$VehicleWatcherStateCopyWithImpl<$Res,
        _$VehicleWatcherStateInitial>
    implements _$$VehicleWatcherStateInitialCopyWith<$Res> {
  __$$VehicleWatcherStateInitialCopyWithImpl(
      _$VehicleWatcherStateInitial _value,
      $Res Function(_$VehicleWatcherStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleWatcherStateInitial implements VehicleWatcherStateInitial {
  const _$VehicleWatcherStateInitial();

  @override
  String toString() {
    return 'VehicleWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleWatcherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Vehicle> vehicles) loadSuccess,
    required TResult Function(VehicleFailure vehicleFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult? Function(VehicleFailure vehicleFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult Function(VehicleFailure vehicleFailure)? loadFailure,
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
    required TResult Function(VehicleWatcherStateInitial value) initial,
    required TResult Function(VehicleWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(VehicleWatcherStateLoadSuccess value) loadSuccess,
    required TResult Function(VehicleWatcherStateLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleWatcherStateInitial value)? initial,
    TResult? Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult? Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(VehicleWatcherStateLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleWatcherStateInitial value)? initial,
    TResult Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(VehicleWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VehicleWatcherStateInitial implements VehicleWatcherState {
  const factory VehicleWatcherStateInitial() = _$VehicleWatcherStateInitial;
}

/// @nodoc
abstract class _$$VehicleWatcherStateLoadInProgressCopyWith<$Res> {
  factory _$$VehicleWatcherStateLoadInProgressCopyWith(
          _$VehicleWatcherStateLoadInProgress value,
          $Res Function(_$VehicleWatcherStateLoadInProgress) then) =
      __$$VehicleWatcherStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleWatcherStateLoadInProgressCopyWithImpl<$Res>
    extends _$VehicleWatcherStateCopyWithImpl<$Res,
        _$VehicleWatcherStateLoadInProgress>
    implements _$$VehicleWatcherStateLoadInProgressCopyWith<$Res> {
  __$$VehicleWatcherStateLoadInProgressCopyWithImpl(
      _$VehicleWatcherStateLoadInProgress _value,
      $Res Function(_$VehicleWatcherStateLoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VehicleWatcherStateLoadInProgress
    implements VehicleWatcherStateLoadInProgress {
  const _$VehicleWatcherStateLoadInProgress();

  @override
  String toString() {
    return 'VehicleWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleWatcherStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Vehicle> vehicles) loadSuccess,
    required TResult Function(VehicleFailure vehicleFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult? Function(VehicleFailure vehicleFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult Function(VehicleFailure vehicleFailure)? loadFailure,
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
    required TResult Function(VehicleWatcherStateInitial value) initial,
    required TResult Function(VehicleWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(VehicleWatcherStateLoadSuccess value) loadSuccess,
    required TResult Function(VehicleWatcherStateLoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleWatcherStateInitial value)? initial,
    TResult? Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult? Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(VehicleWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleWatcherStateInitial value)? initial,
    TResult Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(VehicleWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class VehicleWatcherStateLoadInProgress
    implements VehicleWatcherState {
  const factory VehicleWatcherStateLoadInProgress() =
      _$VehicleWatcherStateLoadInProgress;
}

/// @nodoc
abstract class _$$VehicleWatcherStateLoadSuccessCopyWith<$Res> {
  factory _$$VehicleWatcherStateLoadSuccessCopyWith(
          _$VehicleWatcherStateLoadSuccess value,
          $Res Function(_$VehicleWatcherStateLoadSuccess) then) =
      __$$VehicleWatcherStateLoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Vehicle> vehicles});
}

/// @nodoc
class __$$VehicleWatcherStateLoadSuccessCopyWithImpl<$Res>
    extends _$VehicleWatcherStateCopyWithImpl<$Res,
        _$VehicleWatcherStateLoadSuccess>
    implements _$$VehicleWatcherStateLoadSuccessCopyWith<$Res> {
  __$$VehicleWatcherStateLoadSuccessCopyWithImpl(
      _$VehicleWatcherStateLoadSuccess _value,
      $Res Function(_$VehicleWatcherStateLoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$VehicleWatcherStateLoadSuccess(
      null == vehicles
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as KtList<Vehicle>,
    ));
  }
}

/// @nodoc

class _$VehicleWatcherStateLoadSuccess
    implements VehicleWatcherStateLoadSuccess {
  const _$VehicleWatcherStateLoadSuccess(this.vehicles);

  @override
  final KtList<Vehicle> vehicles;

  @override
  String toString() {
    return 'VehicleWatcherState.loadSuccess(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleWatcherStateLoadSuccess &&
            (identical(other.vehicles, vehicles) ||
                other.vehicles == vehicles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleWatcherStateLoadSuccessCopyWith<_$VehicleWatcherStateLoadSuccess>
      get copyWith => __$$VehicleWatcherStateLoadSuccessCopyWithImpl<
          _$VehicleWatcherStateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Vehicle> vehicles) loadSuccess,
    required TResult Function(VehicleFailure vehicleFailure) loadFailure,
  }) {
    return loadSuccess(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult? Function(VehicleFailure vehicleFailure)? loadFailure,
  }) {
    return loadSuccess?.call(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult Function(VehicleFailure vehicleFailure)? loadFailure,
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
    required TResult Function(VehicleWatcherStateInitial value) initial,
    required TResult Function(VehicleWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(VehicleWatcherStateLoadSuccess value) loadSuccess,
    required TResult Function(VehicleWatcherStateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleWatcherStateInitial value)? initial,
    TResult? Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult? Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(VehicleWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleWatcherStateInitial value)? initial,
    TResult Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(VehicleWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class VehicleWatcherStateLoadSuccess implements VehicleWatcherState {
  const factory VehicleWatcherStateLoadSuccess(final KtList<Vehicle> vehicles) =
      _$VehicleWatcherStateLoadSuccess;

  KtList<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$VehicleWatcherStateLoadSuccessCopyWith<_$VehicleWatcherStateLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VehicleWatcherStateLoadFailureCopyWith<$Res> {
  factory _$$VehicleWatcherStateLoadFailureCopyWith(
          _$VehicleWatcherStateLoadFailure value,
          $Res Function(_$VehicleWatcherStateLoadFailure) then) =
      __$$VehicleWatcherStateLoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({VehicleFailure vehicleFailure});

  $VehicleFailureCopyWith<$Res> get vehicleFailure;
}

/// @nodoc
class __$$VehicleWatcherStateLoadFailureCopyWithImpl<$Res>
    extends _$VehicleWatcherStateCopyWithImpl<$Res,
        _$VehicleWatcherStateLoadFailure>
    implements _$$VehicleWatcherStateLoadFailureCopyWith<$Res> {
  __$$VehicleWatcherStateLoadFailureCopyWithImpl(
      _$VehicleWatcherStateLoadFailure _value,
      $Res Function(_$VehicleWatcherStateLoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleFailure = null,
  }) {
    return _then(_$VehicleWatcherStateLoadFailure(
      null == vehicleFailure
          ? _value.vehicleFailure
          : vehicleFailure // ignore: cast_nullable_to_non_nullable
              as VehicleFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleFailureCopyWith<$Res> get vehicleFailure {
    return $VehicleFailureCopyWith<$Res>(_value.vehicleFailure, (value) {
      return _then(_value.copyWith(vehicleFailure: value));
    });
  }
}

/// @nodoc

class _$VehicleWatcherStateLoadFailure
    implements VehicleWatcherStateLoadFailure {
  const _$VehicleWatcherStateLoadFailure(this.vehicleFailure);

  @override
  final VehicleFailure vehicleFailure;

  @override
  String toString() {
    return 'VehicleWatcherState.loadFailure(vehicleFailure: $vehicleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleWatcherStateLoadFailure &&
            (identical(other.vehicleFailure, vehicleFailure) ||
                other.vehicleFailure == vehicleFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleWatcherStateLoadFailureCopyWith<_$VehicleWatcherStateLoadFailure>
      get copyWith => __$$VehicleWatcherStateLoadFailureCopyWithImpl<
          _$VehicleWatcherStateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Vehicle> vehicles) loadSuccess,
    required TResult Function(VehicleFailure vehicleFailure) loadFailure,
  }) {
    return loadFailure(vehicleFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult? Function(VehicleFailure vehicleFailure)? loadFailure,
  }) {
    return loadFailure?.call(vehicleFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Vehicle> vehicles)? loadSuccess,
    TResult Function(VehicleFailure vehicleFailure)? loadFailure,
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
    required TResult Function(VehicleWatcherStateInitial value) initial,
    required TResult Function(VehicleWatcherStateLoadInProgress value)
        loadInProgress,
    required TResult Function(VehicleWatcherStateLoadSuccess value) loadSuccess,
    required TResult Function(VehicleWatcherStateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VehicleWatcherStateInitial value)? initial,
    TResult? Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult? Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult? Function(VehicleWatcherStateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VehicleWatcherStateInitial value)? initial,
    TResult Function(VehicleWatcherStateLoadInProgress value)? loadInProgress,
    TResult Function(VehicleWatcherStateLoadSuccess value)? loadSuccess,
    TResult Function(VehicleWatcherStateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class VehicleWatcherStateLoadFailure implements VehicleWatcherState {
  const factory VehicleWatcherStateLoadFailure(
      final VehicleFailure vehicleFailure) = _$VehicleWatcherStateLoadFailure;

  VehicleFailure get vehicleFailure;
  @JsonKey(ignore: true)
  _$$VehicleWatcherStateLoadFailureCopyWith<_$VehicleWatcherStateLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
