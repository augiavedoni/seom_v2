// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Receipt {
  int get id => throw _privateConstructorUsedError;
  ReceiptDate get date => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;
  ChargeId get chargeId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res, Receipt>;
  @useResult
  $Res call(
      {int id, ReceiptDate date, Amount amount, bool paid, ChargeId chargeId});
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res, $Val extends Receipt>
    implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

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
    Object? chargeId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as ReceiptDate,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      chargeId: null == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as ChargeId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$_ReceiptCopyWith(
          _$_Receipt value, $Res Function(_$_Receipt) then) =
      __$$_ReceiptCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, ReceiptDate date, Amount amount, bool paid, ChargeId chargeId});
}

/// @nodoc
class __$$_ReceiptCopyWithImpl<$Res>
    extends _$ReceiptCopyWithImpl<$Res, _$_Receipt>
    implements _$$_ReceiptCopyWith<$Res> {
  __$$_ReceiptCopyWithImpl(_$_Receipt _value, $Res Function(_$_Receipt) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? amount = null,
    Object? paid = null,
    Object? chargeId = null,
  }) {
    return _then(_$_Receipt(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as ReceiptDate,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      chargeId: null == chargeId
          ? _value.chargeId
          : chargeId // ignore: cast_nullable_to_non_nullable
              as ChargeId,
    ));
  }
}

/// @nodoc

class _$_Receipt extends _Receipt {
  const _$_Receipt(
      {required this.id,
      required this.date,
      required this.amount,
      required this.paid,
      required this.chargeId})
      : super._();

  @override
  final int id;
  @override
  final ReceiptDate date;
  @override
  final Amount amount;
  @override
  final bool paid;
  @override
  final ChargeId chargeId;

  @override
  String toString() {
    return 'Receipt(id: $id, date: $date, amount: $amount, paid: $paid, chargeId: $chargeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Receipt &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.chargeId, chargeId) ||
                other.chargeId == chargeId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, amount, paid, chargeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      __$$_ReceiptCopyWithImpl<_$_Receipt>(this, _$identity);
}

abstract class _Receipt extends Receipt {
  const factory _Receipt(
      {required final int id,
      required final ReceiptDate date,
      required final Amount amount,
      required final bool paid,
      required final ChargeId chargeId}) = _$_Receipt;
  const _Receipt._() : super._();

  @override
  int get id;
  @override
  ReceiptDate get date;
  @override
  Amount get amount;
  @override
  bool get paid;
  @override
  ChargeId get chargeId;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptCopyWith<_$_Receipt> get copyWith =>
      throw _privateConstructorUsedError;
}
