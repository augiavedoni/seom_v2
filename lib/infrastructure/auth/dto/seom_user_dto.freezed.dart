// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seom_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeomUserDTO _$SeomUserDTOFromJson(Map<String, dynamic> json) {
  return _SeomUserDTO.fromJson(json);
}

/// @nodoc
mixin _$SeomUserDTO {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get cuil => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeomUserDTOCopyWith<SeomUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeomUserDTOCopyWith<$Res> {
  factory $SeomUserDTOCopyWith(
          SeomUserDTO value, $Res Function(SeomUserDTO) then) =
      _$SeomUserDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String cuil,
      DateTime birthdate});
}

/// @nodoc
class _$SeomUserDTOCopyWithImpl<$Res> implements $SeomUserDTOCopyWith<$Res> {
  _$SeomUserDTOCopyWithImpl(this._value, this._then);

  final SeomUserDTO _value;
  // ignore: unused_field
  final $Res Function(SeomUserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? cuil = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      cuil: cuil == freezed
          ? _value.cuil
          : cuil // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_SeomUserDTOCopyWith<$Res>
    implements $SeomUserDTOCopyWith<$Res> {
  factory _$$_SeomUserDTOCopyWith(
          _$_SeomUserDTO value, $Res Function(_$_SeomUserDTO) then) =
      __$$_SeomUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String cuil,
      DateTime birthdate});
}

/// @nodoc
class __$$_SeomUserDTOCopyWithImpl<$Res> extends _$SeomUserDTOCopyWithImpl<$Res>
    implements _$$_SeomUserDTOCopyWith<$Res> {
  __$$_SeomUserDTOCopyWithImpl(
      _$_SeomUserDTO _value, $Res Function(_$_SeomUserDTO) _then)
      : super(_value, (v) => _then(v as _$_SeomUserDTO));

  @override
  _$_SeomUserDTO get _value => super._value as _$_SeomUserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? cuil = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_$_SeomUserDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      cuil: cuil == freezed
          ? _value.cuil
          : cuil // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SeomUserDTO extends _SeomUserDTO {
  const _$_SeomUserDTO(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.cuil,
      required this.birthdate})
      : super._();

  factory _$_SeomUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SeomUserDTOFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String cuil;
  @override
  final DateTime birthdate;

  @override
  String toString() {
    return 'SeomUserDTO(id: $id, firstName: $firstName, lastName: $lastName, cuil: $cuil, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeomUserDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.cuil, cuil) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(cuil),
      const DeepCollectionEquality().hash(birthdate));

  @JsonKey(ignore: true)
  @override
  _$$_SeomUserDTOCopyWith<_$_SeomUserDTO> get copyWith =>
      __$$_SeomUserDTOCopyWithImpl<_$_SeomUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeomUserDTOToJson(
      this,
    );
  }
}

abstract class _SeomUserDTO extends SeomUserDTO {
  const factory _SeomUserDTO(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String cuil,
      required final DateTime birthdate}) = _$_SeomUserDTO;
  const _SeomUserDTO._() : super._();

  factory _SeomUserDTO.fromJson(Map<String, dynamic> json) =
      _$_SeomUserDTO.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get cuil;
  @override
  DateTime get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_SeomUserDTOCopyWith<_$_SeomUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
