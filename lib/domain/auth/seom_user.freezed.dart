// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seom_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeomUser {
  int get id => throw _privateConstructorUsedError;
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  Cuil get cuil => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  RefreshToken get refreshToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeomUserCopyWith<SeomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeomUserCopyWith<$Res> {
  factory $SeomUserCopyWith(SeomUser value, $Res Function(SeomUser) then) =
      _$SeomUserCopyWithImpl<$Res, SeomUser>;
  @useResult
  $Res call(
      {int id,
      FirstName firstName,
      LastName lastName,
      Cuil cuil,
      DateTime birthdate,
      Token token,
      RefreshToken refreshToken});
}

/// @nodoc
class _$SeomUserCopyWithImpl<$Res, $Val extends SeomUser>
    implements $SeomUserCopyWith<$Res> {
  _$SeomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? cuil = null,
    Object? birthdate = null,
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      cuil: null == cuil
          ? _value.cuil
          : cuil // ignore: cast_nullable_to_non_nullable
              as Cuil,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as RefreshToken,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeomUserCopyWith<$Res> implements $SeomUserCopyWith<$Res> {
  factory _$$_SeomUserCopyWith(
          _$_SeomUser value, $Res Function(_$_SeomUser) then) =
      __$$_SeomUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      FirstName firstName,
      LastName lastName,
      Cuil cuil,
      DateTime birthdate,
      Token token,
      RefreshToken refreshToken});
}

/// @nodoc
class __$$_SeomUserCopyWithImpl<$Res>
    extends _$SeomUserCopyWithImpl<$Res, _$_SeomUser>
    implements _$$_SeomUserCopyWith<$Res> {
  __$$_SeomUserCopyWithImpl(
      _$_SeomUser _value, $Res Function(_$_SeomUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? cuil = null,
    Object? birthdate = null,
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_SeomUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      cuil: null == cuil
          ? _value.cuil
          : cuil // ignore: cast_nullable_to_non_nullable
              as Cuil,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as RefreshToken,
    ));
  }
}

/// @nodoc

class _$_SeomUser implements _SeomUser {
  const _$_SeomUser(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.cuil,
      required this.birthdate,
      required this.token,
      required this.refreshToken});

  @override
  final int id;
  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final Cuil cuil;
  @override
  final DateTime birthdate;
  @override
  final Token token;
  @override
  final RefreshToken refreshToken;

  @override
  String toString() {
    return 'SeomUser(id: $id, firstName: $firstName, lastName: $lastName, cuil: $cuil, birthdate: $birthdate, token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeomUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.cuil, cuil) || other.cuil == cuil) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, cuil,
      birthdate, token, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeomUserCopyWith<_$_SeomUser> get copyWith =>
      __$$_SeomUserCopyWithImpl<_$_SeomUser>(this, _$identity);
}

abstract class _SeomUser implements SeomUser {
  const factory _SeomUser(
      {required final int id,
      required final FirstName firstName,
      required final LastName lastName,
      required final Cuil cuil,
      required final DateTime birthdate,
      required final Token token,
      required final RefreshToken refreshToken}) = _$_SeomUser;

  @override
  int get id;
  @override
  FirstName get firstName;
  @override
  LastName get lastName;
  @override
  Cuil get cuil;
  @override
  DateTime get birthdate;
  @override
  Token get token;
  @override
  RefreshToken get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_SeomUserCopyWith<_$_SeomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
