// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receipt_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptDto _$ReceiptDtoFromJson(Map<String, dynamic> json) {
  return _ReceiptDto.fromJson(json);
}

/// @nodoc
mixin _$ReceiptDto {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;
  String? get chargeId => throw _privateConstructorUsedError;
  bool get hasGeneratedReceipt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptDtoCopyWith<ReceiptDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDtoCopyWith<$Res> {
  factory $ReceiptDtoCopyWith(
          ReceiptDto value, $Res Function(ReceiptDto) then) =
      _$ReceiptDtoCopyWithImpl<$Res, ReceiptDto>;
  @useResult
  $Res call(
      {int id,
      String date,
      String amount,
      bool paid,
      String? chargeId,
      bool hasGeneratedReceipt});
}

/// @nodoc
class _$ReceiptDtoCopyWithImpl<$Res, $Val extends ReceiptDto>
    implements $ReceiptDtoCopyWith<$Res> {
  _$ReceiptDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
    Object? paid = null,
    Object? chargeId = freezed,
    Object? hasGeneratedReceipt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      chargeId: freezed == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasGeneratedReceipt: null == hasGeneratedReceipt
          ? _value.hasGeneratedReceipt
          : hasGeneratedReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptDtoCopyWith<$Res>
    implements $ReceiptDtoCopyWith<$Res> {
  factory _$$_ReceiptDtoCopyWith(
          _$_ReceiptDto value, $Res Function(_$_ReceiptDto) then) =
      __$$_ReceiptDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      String amount,
      bool paid,
      String? chargeId,
      bool hasGeneratedReceipt});
}

/// @nodoc
class __$$_ReceiptDtoCopyWithImpl<$Res>
    extends _$ReceiptDtoCopyWithImpl<$Res, _$_ReceiptDto>
    implements _$$_ReceiptDtoCopyWith<$Res> {
  __$$_ReceiptDtoCopyWithImpl(
      _$_ReceiptDto _value, $Res Function(_$_ReceiptDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
    Object? paid = null,
    Object? chargeId = freezed,
    Object? hasGeneratedReceipt = null,
  }) {
    return _then(_$_ReceiptDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      chargeId: freezed == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasGeneratedReceipt: null == hasGeneratedReceipt
          ? _value.hasGeneratedReceipt
          : hasGeneratedReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ReceiptDto extends _ReceiptDto {
  const _$_ReceiptDto(
      {required this.id,
      required this.date,
      required this.amount,
      required this.paid,
      this.chargeId,
      required this.hasGeneratedReceipt})
      : super._();

  factory _$_ReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptDtoFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final String amount;
  @override
  final bool paid;
  @override
  final String? chargeId;
  @override
  final bool hasGeneratedReceipt;

  @override
  String toString() {
    return 'ReceiptDto(id: $id, date: $date, amount: $amount, paid: $paid, chargeId: $chargeId, hasGeneratedReceipt: $hasGeneratedReceipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.chargeId, chargeId) ||
                other.chargeId == chargeId) &&
            (identical(other.hasGeneratedReceipt, hasGeneratedReceipt) ||
                other.hasGeneratedReceipt == hasGeneratedReceipt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, amount, paid, chargeId, hasGeneratedReceipt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptDtoCopyWith<_$_ReceiptDto> get copyWith =>
      __$$_ReceiptDtoCopyWithImpl<_$_ReceiptDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptDtoToJson(
      this,
    );
  }
}

abstract class _ReceiptDto extends ReceiptDto {
  const factory _ReceiptDto(
      {required final int id,
      required final String date,
      required final String amount,
      required final bool paid,
      final String? chargeId,
      required final bool hasGeneratedReceipt}) = _$_ReceiptDto;
  const _ReceiptDto._() : super._();

  factory _ReceiptDto.fromJson(Map<String, dynamic> json) =
      _$_ReceiptDto.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  String get amount;
  @override
  bool get paid;
  @override
  String? get chargeId;
  @override
  bool get hasGeneratedReceipt;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptDtoCopyWith<_$_ReceiptDto> get copyWith =>
      throw _privateConstructorUsedError;
}
