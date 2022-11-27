// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethod {
  Type get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        card,
    required TResult Function(Type type, Balance balance) accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult? Function(Type type, Balance balance)? accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult Function(Type type, Balance balance)? accountBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Card value) card,
    required TResult Function(AccountBalance value) accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Card value)? card,
    TResult? Function(AccountBalance value)? accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Card value)? card,
    TResult Function(AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({Type type});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardCopyWith<$Res> implements $PaymentMethodCopyWith<$Res> {
  factory _$$CardCopyWith(_$Card value, $Res Function(_$Card) then) =
      __$$CardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Type type,
      Id id,
      CardNumber? cardNumber,
      SecurityCode? securityCode,
      Brand brand,
      ExpiryMonth expiryMonth,
      ExpiryYear expiryYear,
      LastFourDigits lastFourDigits});
}

/// @nodoc
class __$$CardCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$Card>
    implements _$$CardCopyWith<$Res> {
  __$$CardCopyWithImpl(_$Card _value, $Res Function(_$Card) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? cardNumber = freezed,
    Object? securityCode = freezed,
    Object? brand = null,
    Object? expiryMonth = null,
    Object? expiryYear = null,
    Object? lastFourDigits = null,
  }) {
    return _then(_$Card(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as CardNumber?,
      securityCode: freezed == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as SecurityCode?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      expiryMonth: null == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as ExpiryMonth,
      expiryYear: null == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as ExpiryYear,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as LastFourDigits,
    ));
  }
}

/// @nodoc

class _$Card extends Card {
  const _$Card(
      {required this.type,
      required this.id,
      this.cardNumber,
      this.securityCode,
      required this.brand,
      required this.expiryMonth,
      required this.expiryYear,
      required this.lastFourDigits})
      : super._();

  @override
  final Type type;
  @override
  final Id id;
  @override
  final CardNumber? cardNumber;
  @override
  final SecurityCode? securityCode;
  @override
  final Brand brand;
  @override
  final ExpiryMonth expiryMonth;
  @override
  final ExpiryYear expiryYear;
  @override
  final LastFourDigits lastFourDigits;

  @override
  String toString() {
    return 'PaymentMethod.card(type: $type, id: $id, cardNumber: $cardNumber, securityCode: $securityCode, brand: $brand, expiryMonth: $expiryMonth, expiryYear: $expiryYear, lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Card &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth) &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, id, cardNumber,
      securityCode, brand, expiryMonth, expiryYear, lastFourDigits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardCopyWith<_$Card> get copyWith =>
      __$$CardCopyWithImpl<_$Card>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        card,
    required TResult Function(Type type, Balance balance) accountBalance,
  }) {
    return card(type, id, cardNumber, securityCode, brand, expiryMonth,
        expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult? Function(Type type, Balance balance)? accountBalance,
  }) {
    return card?.call(type, id, cardNumber, securityCode, brand, expiryMonth,
        expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult Function(Type type, Balance balance)? accountBalance,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(type, id, cardNumber, securityCode, brand, expiryMonth,
          expiryYear, lastFourDigits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Card value) card,
    required TResult Function(AccountBalance value) accountBalance,
  }) {
    return card(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Card value)? card,
    TResult? Function(AccountBalance value)? accountBalance,
  }) {
    return card?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Card value)? card,
    TResult Function(AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(this);
    }
    return orElse();
  }
}

abstract class Card extends PaymentMethod {
  const factory Card(
      {required final Type type,
      required final Id id,
      final CardNumber? cardNumber,
      final SecurityCode? securityCode,
      required final Brand brand,
      required final ExpiryMonth expiryMonth,
      required final ExpiryYear expiryYear,
      required final LastFourDigits lastFourDigits}) = _$Card;
  const Card._() : super._();

  @override
  Type get type;
  Id get id;
  CardNumber? get cardNumber;
  SecurityCode? get securityCode;
  Brand get brand;
  ExpiryMonth get expiryMonth;
  ExpiryYear get expiryYear;
  LastFourDigits get lastFourDigits;
  @override
  @JsonKey(ignore: true)
  _$$CardCopyWith<_$Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountBalanceCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$AccountBalanceCopyWith(
          _$AccountBalance value, $Res Function(_$AccountBalance) then) =
      __$$AccountBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Type type, Balance balance});
}

/// @nodoc
class __$$AccountBalanceCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$AccountBalance>
    implements _$$AccountBalanceCopyWith<$Res> {
  __$$AccountBalanceCopyWithImpl(
      _$AccountBalance _value, $Res Function(_$AccountBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? balance = null,
  }) {
    return _then(_$AccountBalance(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
    ));
  }
}

/// @nodoc

class _$AccountBalance extends AccountBalance {
  const _$AccountBalance({required this.type, required this.balance})
      : super._();

  @override
  final Type type;
  @override
  final Balance balance;

  @override
  String toString() {
    return 'PaymentMethod.accountBalance(type: $type, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBalance &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBalanceCopyWith<_$AccountBalance> get copyWith =>
      __$$AccountBalanceCopyWithImpl<_$AccountBalance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        card,
    required TResult Function(Type type, Balance balance) accountBalance,
  }) {
    return accountBalance(type, balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult? Function(Type type, Balance balance)? accountBalance,
  }) {
    return accountBalance?.call(type, balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Type type,
            Id id,
            CardNumber? cardNumber,
            SecurityCode? securityCode,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)?
        card,
    TResult Function(Type type, Balance balance)? accountBalance,
    required TResult orElse(),
  }) {
    if (accountBalance != null) {
      return accountBalance(type, balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Card value) card,
    required TResult Function(AccountBalance value) accountBalance,
  }) {
    return accountBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Card value)? card,
    TResult? Function(AccountBalance value)? accountBalance,
  }) {
    return accountBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Card value)? card,
    TResult Function(AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) {
    if (accountBalance != null) {
      return accountBalance(this);
    }
    return orElse();
  }
}

abstract class AccountBalance extends PaymentMethod {
  const factory AccountBalance(
      {required final Type type,
      required final Balance balance}) = _$AccountBalance;
  const AccountBalance._() : super._();

  @override
  Type get type;
  Balance get balance;
  @override
  @JsonKey(ignore: true)
  _$$AccountBalanceCopyWith<_$AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
