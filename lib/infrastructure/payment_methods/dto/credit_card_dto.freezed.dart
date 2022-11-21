// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'credit_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCardDto _$CreditCardDtoFromJson(Map<String, dynamic> json) {
  return _CreditCardDTO.fromJson(json);
}

/// @nodoc
mixin _$CreditCardDto {
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
  $CreditCardDtoCopyWith<CreditCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardDtoCopyWith<$Res> {
  factory $CreditCardDtoCopyWith(
          CreditCardDto value, $Res Function(CreditCardDto) then) =
      _$CreditCardDtoCopyWithImpl<$Res, CreditCardDto>;
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
class _$CreditCardDtoCopyWithImpl<$Res, $Val extends CreditCardDto>
    implements $CreditCardDtoCopyWith<$Res> {
  _$CreditCardDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreditCardDTOCopyWith<$Res>
    implements $CreditCardDtoCopyWith<$Res> {
  factory _$$_CreditCardDTOCopyWith(
          _$_CreditCardDTO value, $Res Function(_$_CreditCardDTO) then) =
      __$$_CreditCardDTOCopyWithImpl<$Res>;
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
class __$$_CreditCardDTOCopyWithImpl<$Res>
    extends _$CreditCardDtoCopyWithImpl<$Res, _$_CreditCardDTO>
    implements _$$_CreditCardDTOCopyWith<$Res> {
  __$$_CreditCardDTOCopyWithImpl(
      _$_CreditCardDTO _value, $Res Function(_$_CreditCardDTO) _then)
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
    return _then(_$_CreditCardDTO(
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
class _$_CreditCardDTO extends _CreditCardDTO {
  const _$_CreditCardDTO(
      {required this.id,
      required this.type,
      required this.brand,
      @JsonKey(name: 'expiry_month') required this.expiryMonth,
      @JsonKey(name: 'expiry_year') required this.expiryYear,
      @JsonKey(name: 'last_four_digits') required this.lastFourDigits})
      : super._();

  factory _$_CreditCardDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardDTOFromJson(json);

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
    return 'CreditCardDto(id: $id, type: $type, brand: $brand, expiryMonth: $expiryMonth, expiryYear: $expiryYear, lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCardDTO &&
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
  _$$_CreditCardDTOCopyWith<_$_CreditCardDTO> get copyWith =>
      __$$_CreditCardDTOCopyWithImpl<_$_CreditCardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardDTOToJson(
      this,
    );
  }
}

abstract class _CreditCardDTO extends CreditCardDto {
  const factory _CreditCardDTO(
      {required final String id,
      required final String type,
      required final String brand,
      @JsonKey(name: 'expiry_month')
          required final int expiryMonth,
      @JsonKey(name: 'expiry_year')
          required final int expiryYear,
      @JsonKey(name: 'last_four_digits')
          required final String lastFourDigits}) = _$_CreditCardDTO;
  const _CreditCardDTO._() : super._();

  factory _CreditCardDTO.fromJson(Map<String, dynamic> json) =
      _$_CreditCardDTO.fromJson;

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
  _$$_CreditCardDTOCopyWith<_$_CreditCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
