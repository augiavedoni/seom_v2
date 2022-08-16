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
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeomUserCopyWith<SeomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeomUserCopyWith<$Res> {
  factory $SeomUserCopyWith(SeomUser value, $Res Function(SeomUser) then) =
      _$SeomUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$SeomUserCopyWithImpl<$Res> implements $SeomUserCopyWith<$Res> {
  _$SeomUserCopyWithImpl(this._value, this._then);

  final SeomUser _value;
  // ignore: unused_field
  final $Res Function(SeomUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$$_SeomUserCopyWith<$Res> implements $SeomUserCopyWith<$Res> {
  factory _$$_SeomUserCopyWith(
          _$_SeomUser value, $Res Function(_$_SeomUser) then) =
      __$$_SeomUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$$_SeomUserCopyWithImpl<$Res> extends _$SeomUserCopyWithImpl<$Res>
    implements _$$_SeomUserCopyWith<$Res> {
  __$$_SeomUserCopyWithImpl(
      _$_SeomUser _value, $Res Function(_$_SeomUser) _then)
      : super(_value, (v) => _then(v as _$_SeomUser));

  @override
  _$_SeomUser get _value => super._value as _$_SeomUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_SeomUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_SeomUser implements _SeomUser {
  const _$_SeomUser({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'SeomUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeomUser &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_SeomUserCopyWith<_$_SeomUser> get copyWith =>
      __$$_SeomUserCopyWithImpl<_$_SeomUser>(this, _$identity);
}

abstract class _SeomUser implements SeomUser {
  const factory _SeomUser({required final UniqueId id}) = _$_SeomUser;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$_SeomUserCopyWith<_$_SeomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
