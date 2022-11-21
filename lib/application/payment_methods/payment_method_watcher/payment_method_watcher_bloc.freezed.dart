// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodWatcherEvent {
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
abstract class $PaymentMethodWatcherEventCopyWith<$Res> {
  factory $PaymentMethodWatcherEventCopyWith(PaymentMethodWatcherEvent value,
          $Res Function(PaymentMethodWatcherEvent) then) =
      _$PaymentMethodWatcherEventCopyWithImpl<$Res, PaymentMethodWatcherEvent>;
}

/// @nodoc
class _$PaymentMethodWatcherEventCopyWithImpl<$Res,
        $Val extends PaymentMethodWatcherEvent>
    implements $PaymentMethodWatcherEventCopyWith<$Res> {
  _$PaymentMethodWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$PaymentMethodWatcherEventCopyWithImpl<$Res, _$GetAllStarted>
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
    return 'PaymentMethodWatcherEvent.getAllStarted()';
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

abstract class GetAllStarted implements PaymentMethodWatcherEvent {
  const factory GetAllStarted() = _$GetAllStarted;
}

/// @nodoc
mixin _$PaymentMethodWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PaymentMethod> paymentMethods) loadSuccess,
    required TResult Function(PaymentMethodFailure paymentMethodFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult? Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodWatcherInitialState value) initial,
    required TResult Function(PaymentMethodWatcherLoadInProgressState value)
        loadInProgress,
    required TResult Function(PaymentMethodWatcherLoadSuccessState value)
        loadSuccess,
    required TResult Function(PaymentMethodWatcherLoadFailureState value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodWatcherInitialState value)? initial,
    TResult? Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult? Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult? Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodWatcherInitialState value)? initial,
    TResult Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodWatcherStateCopyWith<$Res> {
  factory $PaymentMethodWatcherStateCopyWith(PaymentMethodWatcherState value,
          $Res Function(PaymentMethodWatcherState) then) =
      _$PaymentMethodWatcherStateCopyWithImpl<$Res, PaymentMethodWatcherState>;
}

/// @nodoc
class _$PaymentMethodWatcherStateCopyWithImpl<$Res,
        $Val extends PaymentMethodWatcherState>
    implements $PaymentMethodWatcherStateCopyWith<$Res> {
  _$PaymentMethodWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentMethodWatcherInitialStateCopyWith<$Res> {
  factory _$$PaymentMethodWatcherInitialStateCopyWith(
          _$PaymentMethodWatcherInitialState value,
          $Res Function(_$PaymentMethodWatcherInitialState) then) =
      __$$PaymentMethodWatcherInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodWatcherInitialStateCopyWithImpl<$Res>
    extends _$PaymentMethodWatcherStateCopyWithImpl<$Res,
        _$PaymentMethodWatcherInitialState>
    implements _$$PaymentMethodWatcherInitialStateCopyWith<$Res> {
  __$$PaymentMethodWatcherInitialStateCopyWithImpl(
      _$PaymentMethodWatcherInitialState _value,
      $Res Function(_$PaymentMethodWatcherInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentMethodWatcherInitialState
    implements PaymentMethodWatcherInitialState {
  const _$PaymentMethodWatcherInitialState();

  @override
  String toString() {
    return 'PaymentMethodWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodWatcherInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PaymentMethod> paymentMethods) loadSuccess,
    required TResult Function(PaymentMethodFailure paymentMethodFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult? Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
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
    required TResult Function(PaymentMethodWatcherInitialState value) initial,
    required TResult Function(PaymentMethodWatcherLoadInProgressState value)
        loadInProgress,
    required TResult Function(PaymentMethodWatcherLoadSuccessState value)
        loadSuccess,
    required TResult Function(PaymentMethodWatcherLoadFailureState value)
        loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodWatcherInitialState value)? initial,
    TResult? Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult? Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult? Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodWatcherInitialState value)? initial,
    TResult Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodWatcherInitialState
    implements PaymentMethodWatcherState {
  const factory PaymentMethodWatcherInitialState() =
      _$PaymentMethodWatcherInitialState;
}

/// @nodoc
abstract class _$$PaymentMethodWatcherLoadInProgressStateCopyWith<$Res> {
  factory _$$PaymentMethodWatcherLoadInProgressStateCopyWith(
          _$PaymentMethodWatcherLoadInProgressState value,
          $Res Function(_$PaymentMethodWatcherLoadInProgressState) then) =
      __$$PaymentMethodWatcherLoadInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodWatcherLoadInProgressStateCopyWithImpl<$Res>
    extends _$PaymentMethodWatcherStateCopyWithImpl<$Res,
        _$PaymentMethodWatcherLoadInProgressState>
    implements _$$PaymentMethodWatcherLoadInProgressStateCopyWith<$Res> {
  __$$PaymentMethodWatcherLoadInProgressStateCopyWithImpl(
      _$PaymentMethodWatcherLoadInProgressState _value,
      $Res Function(_$PaymentMethodWatcherLoadInProgressState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentMethodWatcherLoadInProgressState
    implements PaymentMethodWatcherLoadInProgressState {
  const _$PaymentMethodWatcherLoadInProgressState();

  @override
  String toString() {
    return 'PaymentMethodWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodWatcherLoadInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PaymentMethod> paymentMethods) loadSuccess,
    required TResult Function(PaymentMethodFailure paymentMethodFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult? Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
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
    required TResult Function(PaymentMethodWatcherInitialState value) initial,
    required TResult Function(PaymentMethodWatcherLoadInProgressState value)
        loadInProgress,
    required TResult Function(PaymentMethodWatcherLoadSuccessState value)
        loadSuccess,
    required TResult Function(PaymentMethodWatcherLoadFailureState value)
        loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodWatcherInitialState value)? initial,
    TResult? Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult? Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult? Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodWatcherInitialState value)? initial,
    TResult Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodWatcherLoadInProgressState
    implements PaymentMethodWatcherState {
  const factory PaymentMethodWatcherLoadInProgressState() =
      _$PaymentMethodWatcherLoadInProgressState;
}

/// @nodoc
abstract class _$$PaymentMethodWatcherLoadSuccessStateCopyWith<$Res> {
  factory _$$PaymentMethodWatcherLoadSuccessStateCopyWith(
          _$PaymentMethodWatcherLoadSuccessState value,
          $Res Function(_$PaymentMethodWatcherLoadSuccessState) then) =
      __$$PaymentMethodWatcherLoadSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<PaymentMethod> paymentMethods});
}

/// @nodoc
class __$$PaymentMethodWatcherLoadSuccessStateCopyWithImpl<$Res>
    extends _$PaymentMethodWatcherStateCopyWithImpl<$Res,
        _$PaymentMethodWatcherLoadSuccessState>
    implements _$$PaymentMethodWatcherLoadSuccessStateCopyWith<$Res> {
  __$$PaymentMethodWatcherLoadSuccessStateCopyWithImpl(
      _$PaymentMethodWatcherLoadSuccessState _value,
      $Res Function(_$PaymentMethodWatcherLoadSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
  }) {
    return _then(_$PaymentMethodWatcherLoadSuccessState(
      null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as KtList<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$PaymentMethodWatcherLoadSuccessState
    implements PaymentMethodWatcherLoadSuccessState {
  const _$PaymentMethodWatcherLoadSuccessState(this.paymentMethods);

  @override
  final KtList<PaymentMethod> paymentMethods;

  @override
  String toString() {
    return 'PaymentMethodWatcherState.loadSuccess(paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodWatcherLoadSuccessState &&
            (identical(other.paymentMethods, paymentMethods) ||
                other.paymentMethods == paymentMethods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethods);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodWatcherLoadSuccessStateCopyWith<
          _$PaymentMethodWatcherLoadSuccessState>
      get copyWith => __$$PaymentMethodWatcherLoadSuccessStateCopyWithImpl<
          _$PaymentMethodWatcherLoadSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PaymentMethod> paymentMethods) loadSuccess,
    required TResult Function(PaymentMethodFailure paymentMethodFailure)
        loadFailure,
  }) {
    return loadSuccess(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult? Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
  }) {
    return loadSuccess?.call(paymentMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(paymentMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodWatcherInitialState value) initial,
    required TResult Function(PaymentMethodWatcherLoadInProgressState value)
        loadInProgress,
    required TResult Function(PaymentMethodWatcherLoadSuccessState value)
        loadSuccess,
    required TResult Function(PaymentMethodWatcherLoadFailureState value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodWatcherInitialState value)? initial,
    TResult? Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult? Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult? Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodWatcherInitialState value)? initial,
    TResult Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodWatcherLoadSuccessState
    implements PaymentMethodWatcherState {
  const factory PaymentMethodWatcherLoadSuccessState(
          final KtList<PaymentMethod> paymentMethods) =
      _$PaymentMethodWatcherLoadSuccessState;

  KtList<PaymentMethod> get paymentMethods;
  @JsonKey(ignore: true)
  _$$PaymentMethodWatcherLoadSuccessStateCopyWith<
          _$PaymentMethodWatcherLoadSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentMethodWatcherLoadFailureStateCopyWith<$Res> {
  factory _$$PaymentMethodWatcherLoadFailureStateCopyWith(
          _$PaymentMethodWatcherLoadFailureState value,
          $Res Function(_$PaymentMethodWatcherLoadFailureState) then) =
      __$$PaymentMethodWatcherLoadFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethodFailure paymentMethodFailure});

  $PaymentMethodFailureCopyWith<$Res> get paymentMethodFailure;
}

/// @nodoc
class __$$PaymentMethodWatcherLoadFailureStateCopyWithImpl<$Res>
    extends _$PaymentMethodWatcherStateCopyWithImpl<$Res,
        _$PaymentMethodWatcherLoadFailureState>
    implements _$$PaymentMethodWatcherLoadFailureStateCopyWith<$Res> {
  __$$PaymentMethodWatcherLoadFailureStateCopyWithImpl(
      _$PaymentMethodWatcherLoadFailureState _value,
      $Res Function(_$PaymentMethodWatcherLoadFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodFailure = null,
  }) {
    return _then(_$PaymentMethodWatcherLoadFailureState(
      null == paymentMethodFailure
          ? _value.paymentMethodFailure
          : paymentMethodFailure // ignore: cast_nullable_to_non_nullable
              as PaymentMethodFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodFailureCopyWith<$Res> get paymentMethodFailure {
    return $PaymentMethodFailureCopyWith<$Res>(_value.paymentMethodFailure,
        (value) {
      return _then(_value.copyWith(paymentMethodFailure: value));
    });
  }
}

/// @nodoc

class _$PaymentMethodWatcherLoadFailureState
    implements PaymentMethodWatcherLoadFailureState {
  const _$PaymentMethodWatcherLoadFailureState(this.paymentMethodFailure);

  @override
  final PaymentMethodFailure paymentMethodFailure;

  @override
  String toString() {
    return 'PaymentMethodWatcherState.loadFailure(paymentMethodFailure: $paymentMethodFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodWatcherLoadFailureState &&
            (identical(other.paymentMethodFailure, paymentMethodFailure) ||
                other.paymentMethodFailure == paymentMethodFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodWatcherLoadFailureStateCopyWith<
          _$PaymentMethodWatcherLoadFailureState>
      get copyWith => __$$PaymentMethodWatcherLoadFailureStateCopyWithImpl<
          _$PaymentMethodWatcherLoadFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<PaymentMethod> paymentMethods) loadSuccess,
    required TResult Function(PaymentMethodFailure paymentMethodFailure)
        loadFailure,
  }) {
    return loadFailure(paymentMethodFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult? Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
  }) {
    return loadFailure?.call(paymentMethodFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<PaymentMethod> paymentMethods)? loadSuccess,
    TResult Function(PaymentMethodFailure paymentMethodFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(paymentMethodFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentMethodWatcherInitialState value) initial,
    required TResult Function(PaymentMethodWatcherLoadInProgressState value)
        loadInProgress,
    required TResult Function(PaymentMethodWatcherLoadSuccessState value)
        loadSuccess,
    required TResult Function(PaymentMethodWatcherLoadFailureState value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentMethodWatcherInitialState value)? initial,
    TResult? Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult? Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult? Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentMethodWatcherInitialState value)? initial,
    TResult Function(PaymentMethodWatcherLoadInProgressState value)?
        loadInProgress,
    TResult Function(PaymentMethodWatcherLoadSuccessState value)? loadSuccess,
    TResult Function(PaymentMethodWatcherLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodWatcherLoadFailureState
    implements PaymentMethodWatcherState {
  const factory PaymentMethodWatcherLoadFailureState(
          final PaymentMethodFailure paymentMethodFailure) =
      _$PaymentMethodWatcherLoadFailureState;

  PaymentMethodFailure get paymentMethodFailure;
  @JsonKey(ignore: true)
  _$$PaymentMethodWatcherLoadFailureStateCopyWith<
          _$PaymentMethodWatcherLoadFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
