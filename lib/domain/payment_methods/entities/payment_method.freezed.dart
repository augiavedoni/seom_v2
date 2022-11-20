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
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        creditCard,
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        debitCard,
    required TResult Function(Type type) accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult? Function(Type type)? accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult Function(Type type)? accountBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreditCard value) creditCard,
    required TResult Function(_DebitCard value) debitCard,
    required TResult Function(_AccountBalance value) accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreditCard value)? creditCard,
    TResult? Function(_DebitCard value)? debitCard,
    TResult? Function(_AccountBalance value)? accountBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreditCard value)? creditCard,
    TResult Function(_DebitCard value)? debitCard,
    TResult Function(_AccountBalance value)? accountBalance,
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
abstract class _$$_CreditCardCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Type type,
      Id id,
      Brand brand,
      ExpiryMonth expiryMonth,
      ExpiryYear expiryYear,
      LastFourDigits lastFourDigits});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? brand = null,
    Object? expiryMonth = null,
    Object? expiryYear = null,
    Object? lastFourDigits = null,
  }) {
    return _then(_$_CreditCard(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
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

class _$_CreditCard extends _CreditCard {
  const _$_CreditCard(
      {required this.type,
      required this.id,
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
  final Brand brand;
  @override
  final ExpiryMonth expiryMonth;
  @override
  final ExpiryYear expiryYear;
  @override
  final LastFourDigits lastFourDigits;

  @override
  String toString() {
    return 'PaymentMethod.creditCard(type: $type, id: $id, brand: $brand, expiryMonth: $expiryMonth, expiryYear: $expiryYear, lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth) &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, id, brand, expiryMonth, expiryYear, lastFourDigits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        creditCard,
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        debitCard,
    required TResult Function(Type type) accountBalance,
  }) {
    return creditCard(type, id, brand, expiryMonth, expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult? Function(Type type)? accountBalance,
  }) {
    return creditCard?.call(
        type, id, brand, expiryMonth, expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult Function(Type type)? accountBalance,
    required TResult orElse(),
  }) {
    if (creditCard != null) {
      return creditCard(
          type, id, brand, expiryMonth, expiryYear, lastFourDigits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreditCard value) creditCard,
    required TResult Function(_DebitCard value) debitCard,
    required TResult Function(_AccountBalance value) accountBalance,
  }) {
    return creditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreditCard value)? creditCard,
    TResult? Function(_DebitCard value)? debitCard,
    TResult? Function(_AccountBalance value)? accountBalance,
  }) {
    return creditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreditCard value)? creditCard,
    TResult Function(_DebitCard value)? debitCard,
    TResult Function(_AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) {
    if (creditCard != null) {
      return creditCard(this);
    }
    return orElse();
  }
}

abstract class _CreditCard extends PaymentMethod {
  const factory _CreditCard(
      {required final Type type,
      required final Id id,
      required final Brand brand,
      required final ExpiryMonth expiryMonth,
      required final ExpiryYear expiryYear,
      required final LastFourDigits lastFourDigits}) = _$_CreditCard;
  const _CreditCard._() : super._();

  @override
  Type get type;
  Id get id;
  Brand get brand;
  ExpiryMonth get expiryMonth;
  ExpiryYear get expiryYear;
  LastFourDigits get lastFourDigits;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DebitCardCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_DebitCardCopyWith(
          _$_DebitCard value, $Res Function(_$_DebitCard) then) =
      __$$_DebitCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Type type,
      Id id,
      Brand brand,
      ExpiryMonth expiryMonth,
      ExpiryYear expiryYear,
      LastFourDigits lastFourDigits});
}

/// @nodoc
class __$$_DebitCardCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_DebitCard>
    implements _$$_DebitCardCopyWith<$Res> {
  __$$_DebitCardCopyWithImpl(
      _$_DebitCard _value, $Res Function(_$_DebitCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? brand = null,
    Object? expiryMonth = null,
    Object? expiryYear = null,
    Object? lastFourDigits = null,
  }) {
    return _then(_$_DebitCard(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
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

class _$_DebitCard extends _DebitCard {
  const _$_DebitCard(
      {required this.type,
      required this.id,
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
  final Brand brand;
  @override
  final ExpiryMonth expiryMonth;
  @override
  final ExpiryYear expiryYear;
  @override
  final LastFourDigits lastFourDigits;

  @override
  String toString() {
    return 'PaymentMethod.debitCard(type: $type, id: $id, brand: $brand, expiryMonth: $expiryMonth, expiryYear: $expiryYear, lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DebitCard &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth) &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, type, id, brand, expiryMonth, expiryYear, lastFourDigits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      __$$_DebitCardCopyWithImpl<_$_DebitCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        creditCard,
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        debitCard,
    required TResult Function(Type type) accountBalance,
  }) {
    return debitCard(type, id, brand, expiryMonth, expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult? Function(Type type)? accountBalance,
  }) {
    return debitCard?.call(
        type, id, brand, expiryMonth, expiryYear, lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult Function(Type type)? accountBalance,
    required TResult orElse(),
  }) {
    if (debitCard != null) {
      return debitCard(
          type, id, brand, expiryMonth, expiryYear, lastFourDigits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreditCard value) creditCard,
    required TResult Function(_DebitCard value) debitCard,
    required TResult Function(_AccountBalance value) accountBalance,
  }) {
    return debitCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreditCard value)? creditCard,
    TResult? Function(_DebitCard value)? debitCard,
    TResult? Function(_AccountBalance value)? accountBalance,
  }) {
    return debitCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreditCard value)? creditCard,
    TResult Function(_DebitCard value)? debitCard,
    TResult Function(_AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) {
    if (debitCard != null) {
      return debitCard(this);
    }
    return orElse();
  }
}

abstract class _DebitCard extends PaymentMethod {
  const factory _DebitCard(
      {required final Type type,
      required final Id id,
      required final Brand brand,
      required final ExpiryMonth expiryMonth,
      required final ExpiryYear expiryYear,
      required final LastFourDigits lastFourDigits}) = _$_DebitCard;
  const _DebitCard._() : super._();

  @override
  Type get type;
  Id get id;
  Brand get brand;
  ExpiryMonth get expiryMonth;
  ExpiryYear get expiryYear;
  LastFourDigits get lastFourDigits;
  @override
  @JsonKey(ignore: true)
  _$$_DebitCardCopyWith<_$_DebitCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountBalanceCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_AccountBalanceCopyWith(
          _$_AccountBalance value, $Res Function(_$_AccountBalance) then) =
      __$$_AccountBalanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Type type});
}

/// @nodoc
class __$$_AccountBalanceCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_AccountBalance>
    implements _$$_AccountBalanceCopyWith<$Res> {
  __$$_AccountBalanceCopyWithImpl(
      _$_AccountBalance _value, $Res Function(_$_AccountBalance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_AccountBalance(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_AccountBalance extends _AccountBalance {
  const _$_AccountBalance({required this.type}) : super._();

  @override
  final Type type;

  @override
  String toString() {
    return 'PaymentMethod.accountBalance(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBalance &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      __$$_AccountBalanceCopyWithImpl<_$_AccountBalance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        creditCard,
    required TResult Function(
            Type type,
            Id id,
            Brand brand,
            ExpiryMonth expiryMonth,
            ExpiryYear expiryYear,
            LastFourDigits lastFourDigits)
        debitCard,
    required TResult Function(Type type) accountBalance,
  }) {
    return accountBalance(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult? Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult? Function(Type type)? accountBalance,
  }) {
    return accountBalance?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        creditCard,
    TResult Function(Type type, Id id, Brand brand, ExpiryMonth expiryMonth,
            ExpiryYear expiryYear, LastFourDigits lastFourDigits)?
        debitCard,
    TResult Function(Type type)? accountBalance,
    required TResult orElse(),
  }) {
    if (accountBalance != null) {
      return accountBalance(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreditCard value) creditCard,
    required TResult Function(_DebitCard value) debitCard,
    required TResult Function(_AccountBalance value) accountBalance,
  }) {
    return accountBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreditCard value)? creditCard,
    TResult? Function(_DebitCard value)? debitCard,
    TResult? Function(_AccountBalance value)? accountBalance,
  }) {
    return accountBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreditCard value)? creditCard,
    TResult Function(_DebitCard value)? debitCard,
    TResult Function(_AccountBalance value)? accountBalance,
    required TResult orElse(),
  }) {
    if (accountBalance != null) {
      return accountBalance(this);
    }
    return orElse();
  }
}

abstract class _AccountBalance extends PaymentMethod {
  const factory _AccountBalance({required final Type type}) = _$_AccountBalance;
  const _AccountBalance._() : super._();

  @override
  Type get type;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalanceCopyWith<_$_AccountBalance> get copyWith =>
      throw _privateConstructorUsedError;
}
