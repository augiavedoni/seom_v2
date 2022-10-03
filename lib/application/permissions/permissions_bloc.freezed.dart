// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permissions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermissionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationVerificationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationVerificationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationVerificationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationVerificationStarted value)
        locationVerificationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationVerificationStarted value)?
        locationVerificationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationVerificationStarted value)?
        locationVerificationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsEventCopyWith<$Res> {
  factory $PermissionsEventCopyWith(
          PermissionsEvent value, $Res Function(PermissionsEvent) then) =
      _$PermissionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionsEventCopyWithImpl<$Res>
    implements $PermissionsEventCopyWith<$Res> {
  _$PermissionsEventCopyWithImpl(this._value, this._then);

  final PermissionsEvent _value;
  // ignore: unused_field
  final $Res Function(PermissionsEvent) _then;
}

/// @nodoc
abstract class _$$LocationVerificationStartedCopyWith<$Res> {
  factory _$$LocationVerificationStartedCopyWith(
          _$LocationVerificationStarted value,
          $Res Function(_$LocationVerificationStarted) then) =
      __$$LocationVerificationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationVerificationStartedCopyWithImpl<$Res>
    extends _$PermissionsEventCopyWithImpl<$Res>
    implements _$$LocationVerificationStartedCopyWith<$Res> {
  __$$LocationVerificationStartedCopyWithImpl(
      _$LocationVerificationStarted _value,
      $Res Function(_$LocationVerificationStarted) _then)
      : super(_value, (v) => _then(v as _$LocationVerificationStarted));

  @override
  _$LocationVerificationStarted get _value =>
      super._value as _$LocationVerificationStarted;
}

/// @nodoc

class _$LocationVerificationStarted implements LocationVerificationStarted {
  const _$LocationVerificationStarted();

  @override
  String toString() {
    return 'PermissionsEvent.locationVerificationStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationVerificationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() locationVerificationStarted,
  }) {
    return locationVerificationStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? locationVerificationStarted,
  }) {
    return locationVerificationStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? locationVerificationStarted,
    required TResult orElse(),
  }) {
    if (locationVerificationStarted != null) {
      return locationVerificationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationVerificationStarted value)
        locationVerificationStarted,
  }) {
    return locationVerificationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationVerificationStarted value)?
        locationVerificationStarted,
  }) {
    return locationVerificationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationVerificationStarted value)?
        locationVerificationStarted,
    required TResult orElse(),
  }) {
    if (locationVerificationStarted != null) {
      return locationVerificationStarted(this);
    }
    return orElse();
  }
}

abstract class LocationVerificationStarted implements PermissionsEvent {
  const factory LocationVerificationStarted() = _$LocationVerificationStarted;
}

/// @nodoc
mixin _$PermissionsState {
  Option<Either<PermissionFailure, Unit>>
      get verificationFailureOrSucessOption =>
          throw _privateConstructorUsedError;
  bool get verificationInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PermissionsStateCopyWith<PermissionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsStateCopyWith<$Res> {
  factory $PermissionsStateCopyWith(
          PermissionsState value, $Res Function(PermissionsState) then) =
      _$PermissionsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<PermissionFailure, Unit>>
          verificationFailureOrSucessOption,
      bool verificationInProgress});
}

/// @nodoc
class _$PermissionsStateCopyWithImpl<$Res>
    implements $PermissionsStateCopyWith<$Res> {
  _$PermissionsStateCopyWithImpl(this._value, this._then);

  final PermissionsState _value;
  // ignore: unused_field
  final $Res Function(PermissionsState) _then;

  @override
  $Res call({
    Object? verificationFailureOrSucessOption = freezed,
    Object? verificationInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      verificationFailureOrSucessOption: verificationFailureOrSucessOption ==
              freezed
          ? _value.verificationFailureOrSucessOption
          : verificationFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PermissionFailure, Unit>>,
      verificationInProgress: verificationInProgress == freezed
          ? _value.verificationInProgress
          : verificationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PermissionsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<PermissionFailure, Unit>>
          verificationFailureOrSucessOption,
      bool verificationInProgress});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PermissionsStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? verificationFailureOrSucessOption = freezed,
    Object? verificationInProgress = freezed,
  }) {
    return _then(_$_Initial(
      verificationFailureOrSucessOption: verificationFailureOrSucessOption ==
              freezed
          ? _value.verificationFailureOrSucessOption
          : verificationFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PermissionFailure, Unit>>,
      verificationInProgress: verificationInProgress == freezed
          ? _value.verificationInProgress
          : verificationInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.verificationFailureOrSucessOption,
      required this.verificationInProgress});

  @override
  final Option<Either<PermissionFailure, Unit>>
      verificationFailureOrSucessOption;
  @override
  final bool verificationInProgress;

  @override
  String toString() {
    return 'PermissionsState(verificationFailureOrSucessOption: $verificationFailureOrSucessOption, verificationInProgress: $verificationInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(
                other.verificationFailureOrSucessOption,
                verificationFailureOrSucessOption) &&
            const DeepCollectionEquality()
                .equals(other.verificationInProgress, verificationInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(verificationFailureOrSucessOption),
      const DeepCollectionEquality().hash(verificationInProgress));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PermissionsState {
  const factory _Initial(
      {required final Option<Either<PermissionFailure, Unit>>
          verificationFailureOrSucessOption,
      required final bool verificationInProgress}) = _$_Initial;

  @override
  Option<Either<PermissionFailure, Unit>> get verificationFailureOrSucessOption;
  @override
  bool get verificationInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
