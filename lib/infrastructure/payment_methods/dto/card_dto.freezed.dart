// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardDto _$CardDtoFromJson(Map<String, dynamic> json) {
  return _CardDTO.fromJson(json);
}

/// @nodoc
mixin _$CardDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_month')
  int get expiryMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_year')
  int get expiryYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_four_digits')
  String get lastFourDigits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardDtoCopyWith<CardDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDtoCopyWith<$Res> {
  factory $CardDtoCopyWith(CardDto value, $Res Function(CardDto) then) =
      _$CardDtoCopyWithImpl<$Res, CardDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      String brand,
      @JsonKey(name: 'expiry_month') int expiryMonth,
      @JsonKey(name: 'expiry_year') int expiryYear,
      @JsonKey(name: 'last_four_digits') String lastFourDigits});
}

/// @nodoc
class _$CardDtoCopyWithImpl<$Res, $Val extends CardDto>
    implements $CardDtoCopyWith<$Res> {
  _$CardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? brand = null,
    Object? expiryMonth = null,
    Object? expiryYear = null,
    Object? lastFourDigits = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      expiryMonth: null == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as int,
      expiryYear: null == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as int,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardDTOCopyWith<$Res> implements $CardDtoCopyWith<$Res> {
  factory _$$_CardDTOCopyWith(
          _$_CardDTO value, $Res Function(_$_CardDTO) then) =
      __$$_CardDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String brand,
      @JsonKey(name: 'expiry_month') int expiryMonth,
      @JsonKey(name: 'expiry_year') int expiryYear,
      @JsonKey(name: 'last_four_digits') String lastFourDigits});
}

/// @nodoc
class __$$_CardDTOCopyWithImpl<$Res>
    extends _$CardDtoCopyWithImpl<$Res, _$_CardDTO>
    implements _$$_CardDTOCopyWith<$Res> {
  __$$_CardDTOCopyWithImpl(_$_CardDTO _value, $Res Function(_$_CardDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? brand = null,
    Object? expiryMonth = null,
    Object? expiryYear = null,
    Object? lastFourDigits = null,
  }) {
    return _then(_$_CardDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      expiryMonth: null == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as int,
      expiryYear: null == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as int,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CardDTO extends _CardDTO {
  const _$_CardDTO(
      {required this.id,
      required this.type,
      required this.brand,
      @JsonKey(name: 'expiry_month') required this.expiryMonth,
      @JsonKey(name: 'expiry_year') required this.expiryYear,
      @JsonKey(name: 'last_four_digits') required this.lastFourDigits})
      : super._();

  factory _$_CardDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CardDTOFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String brand;
  @override
  @JsonKey(name: 'expiry_month')
  final int expiryMonth;
  @override
  @JsonKey(name: 'expiry_year')
  final int expiryYear;
  @override
  @JsonKey(name: 'last_four_digits')
  final String lastFourDigits;

  @override
  String toString() {
    return 'CardDto(id: $id, type: $type, brand: $brand, expiryMonth: $expiryMonth, expiryYear: $expiryYear, lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth) &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, brand, expiryMonth, expiryYear, lastFourDigits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardDTOCopyWith<_$_CardDTO> get copyWith =>
      __$$_CardDTOCopyWithImpl<_$_CardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardDTOToJson(
      this,
    );
  }
}

abstract class _CardDTO extends CardDto {
  const factory _CardDTO(
      {required final String id,
      required final String type,
      required final String brand,
      @JsonKey(name: 'expiry_month')
          required final int expiryMonth,
      @JsonKey(name: 'expiry_year')
          required final int expiryYear,
      @JsonKey(name: 'last_four_digits')
          required final String lastFourDigits}) = _$_CardDTO;
  const _CardDTO._() : super._();

  factory _CardDTO.fromJson(Map<String, dynamic> json) = _$_CardDTO.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get brand;
  @override
  @JsonKey(name: 'expiry_month')
  int get expiryMonth;
  @override
  @JsonKey(name: 'expiry_year')
  int get expiryYear;
  @override
  @JsonKey(name: 'last_four_digits')
  String get lastFourDigits;
  @override
  @JsonKey(ignore: true)
  _$$_CardDTOCopyWith<_$_CardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
