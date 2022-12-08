// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodFormEventCopyWith<$Res> {
  factory $PaymentMethodFormEventCopyWith(PaymentMethodFormEvent value,
          $Res Function(PaymentMethodFormEvent) then) =
      _$PaymentMethodFormEventCopyWithImpl<$Res, PaymentMethodFormEvent>;
}

/// @nodoc
class _$PaymentMethodFormEventCopyWithImpl<$Res,
        $Val extends PaymentMethodFormEvent>
    implements $PaymentMethodFormEventCopyWith<$Res> {
  _$PaymentMethodFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentMethodType});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodType = null,
  }) {
    return _then(_$_Initialized(
      null == paymentMethodType
          ? _value.paymentMethodType
          : paymentMethodType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.paymentMethodType);

  @override
  final String paymentMethodType;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.initialized(paymentMethodType: $paymentMethodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.paymentMethodType, paymentMethodType) ||
                other.paymentMethodType == paymentMethodType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return initialized(paymentMethodType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(paymentMethodType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(paymentMethodType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PaymentMethodFormEvent {
  const factory _Initialized(final String paymentMethodType) = _$_Initialized;

  String get paymentMethodType;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CardNumberChangedCopyWith<$Res> {
  factory _$$_CardNumberChangedCopyWith(_$_CardNumberChanged value,
          $Res Function(_$_CardNumberChanged) then) =
      __$$_CardNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardNumber});
}

/// @nodoc
class __$$_CardNumberChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_CardNumberChanged>
    implements _$$_CardNumberChangedCopyWith<$Res> {
  __$$_CardNumberChangedCopyWithImpl(
      _$_CardNumberChanged _value, $Res Function(_$_CardNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
  }) {
    return _then(_$_CardNumberChanged(
      null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CardNumberChanged implements _CardNumberChanged {
  const _$_CardNumberChanged(this.cardNumber);

  @override
  final String cardNumber;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.cardNumberChanged(cardNumber: $cardNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardNumberChanged &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardNumberChangedCopyWith<_$_CardNumberChanged> get copyWith =>
      __$$_CardNumberChangedCopyWithImpl<_$_CardNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return cardNumberChanged(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return cardNumberChanged?.call(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(cardNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return cardNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return cardNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (cardNumberChanged != null) {
      return cardNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _CardNumberChanged implements PaymentMethodFormEvent {
  const factory _CardNumberChanged(final String cardNumber) =
      _$_CardNumberChanged;

  String get cardNumber;
  @JsonKey(ignore: true)
  _$$_CardNumberChangedCopyWith<_$_CardNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SecurityCodeChangedCopyWith<$Res> {
  factory _$$_SecurityCodeChangedCopyWith(_$_SecurityCodeChanged value,
          $Res Function(_$_SecurityCodeChanged) then) =
      __$$_SecurityCodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String securityCode});
}

/// @nodoc
class __$$_SecurityCodeChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_SecurityCodeChanged>
    implements _$$_SecurityCodeChangedCopyWith<$Res> {
  __$$_SecurityCodeChangedCopyWithImpl(_$_SecurityCodeChanged _value,
      $Res Function(_$_SecurityCodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityCode = null,
  }) {
    return _then(_$_SecurityCodeChanged(
      null == securityCode
          ? _value.securityCode
          : securityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SecurityCodeChanged implements _SecurityCodeChanged {
  const _$_SecurityCodeChanged(this.securityCode);

  @override
  final String securityCode;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.securityCodeChanged(securityCode: $securityCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityCodeChanged &&
            (identical(other.securityCode, securityCode) ||
                other.securityCode == securityCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, securityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityCodeChangedCopyWith<_$_SecurityCodeChanged> get copyWith =>
      __$$_SecurityCodeChangedCopyWithImpl<_$_SecurityCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return securityCodeChanged(securityCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return securityCodeChanged?.call(securityCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (securityCodeChanged != null) {
      return securityCodeChanged(securityCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return securityCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return securityCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (securityCodeChanged != null) {
      return securityCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _SecurityCodeChanged implements PaymentMethodFormEvent {
  const factory _SecurityCodeChanged(final String securityCode) =
      _$_SecurityCodeChanged;

  String get securityCode;
  @JsonKey(ignore: true)
  _$$_SecurityCodeChangedCopyWith<_$_SecurityCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExpiryMonthChangedCopyWith<$Res> {
  factory _$$_ExpiryMonthChangedCopyWith(_$_ExpiryMonthChanged value,
          $Res Function(_$_ExpiryMonthChanged) then) =
      __$$_ExpiryMonthChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String expiryMonth});
}

/// @nodoc
class __$$_ExpiryMonthChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_ExpiryMonthChanged>
    implements _$$_ExpiryMonthChangedCopyWith<$Res> {
  __$$_ExpiryMonthChangedCopyWithImpl(
      _$_ExpiryMonthChanged _value, $Res Function(_$_ExpiryMonthChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiryMonth = null,
  }) {
    return _then(_$_ExpiryMonthChanged(
      null == expiryMonth
          ? _value.expiryMonth
          : expiryMonth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExpiryMonthChanged implements _ExpiryMonthChanged {
  const _$_ExpiryMonthChanged(this.expiryMonth);

  @override
  final String expiryMonth;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.expiryMonthChanged(expiryMonth: $expiryMonth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpiryMonthChanged &&
            (identical(other.expiryMonth, expiryMonth) ||
                other.expiryMonth == expiryMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expiryMonth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpiryMonthChangedCopyWith<_$_ExpiryMonthChanged> get copyWith =>
      __$$_ExpiryMonthChangedCopyWithImpl<_$_ExpiryMonthChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return expiryMonthChanged(expiryMonth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return expiryMonthChanged?.call(expiryMonth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (expiryMonthChanged != null) {
      return expiryMonthChanged(expiryMonth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return expiryMonthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return expiryMonthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (expiryMonthChanged != null) {
      return expiryMonthChanged(this);
    }
    return orElse();
  }
}

abstract class _ExpiryMonthChanged implements PaymentMethodFormEvent {
  const factory _ExpiryMonthChanged(final String expiryMonth) =
      _$_ExpiryMonthChanged;

  String get expiryMonth;
  @JsonKey(ignore: true)
  _$$_ExpiryMonthChangedCopyWith<_$_ExpiryMonthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExpiryYearChangedCopyWith<$Res> {
  factory _$$_ExpiryYearChangedCopyWith(_$_ExpiryYearChanged value,
          $Res Function(_$_ExpiryYearChanged) then) =
      __$$_ExpiryYearChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String expiryYear});
}

/// @nodoc
class __$$_ExpiryYearChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_ExpiryYearChanged>
    implements _$$_ExpiryYearChangedCopyWith<$Res> {
  __$$_ExpiryYearChangedCopyWithImpl(
      _$_ExpiryYearChanged _value, $Res Function(_$_ExpiryYearChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiryYear = null,
  }) {
    return _then(_$_ExpiryYearChanged(
      null == expiryYear
          ? _value.expiryYear
          : expiryYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExpiryYearChanged implements _ExpiryYearChanged {
  const _$_ExpiryYearChanged(this.expiryYear);

  @override
  final String expiryYear;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.expiryYearChanged(expiryYear: $expiryYear)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpiryYearChanged &&
            (identical(other.expiryYear, expiryYear) ||
                other.expiryYear == expiryYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expiryYear);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpiryYearChangedCopyWith<_$_ExpiryYearChanged> get copyWith =>
      __$$_ExpiryYearChangedCopyWithImpl<_$_ExpiryYearChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return expiryYearChanged(expiryYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return expiryYearChanged?.call(expiryYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (expiryYearChanged != null) {
      return expiryYearChanged(expiryYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return expiryYearChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return expiryYearChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (expiryYearChanged != null) {
      return expiryYearChanged(this);
    }
    return orElse();
  }
}

abstract class _ExpiryYearChanged implements PaymentMethodFormEvent {
  const factory _ExpiryYearChanged(final String expiryYear) =
      _$_ExpiryYearChanged;

  String get expiryYear;
  @JsonKey(ignore: true)
  _$$_ExpiryYearChangedCopyWith<_$_ExpiryYearChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PaymentMethodFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String paymentMethodType) initialized,
    required TResult Function(String cardNumber) cardNumberChanged,
    required TResult Function(String securityCode) securityCodeChanged,
    required TResult Function(String expiryMonth) expiryMonthChanged,
    required TResult Function(String expiryYear) expiryYearChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String paymentMethodType)? initialized,
    TResult? Function(String cardNumber)? cardNumberChanged,
    TResult? Function(String securityCode)? securityCodeChanged,
    TResult? Function(String expiryMonth)? expiryMonthChanged,
    TResult? Function(String expiryYear)? expiryYearChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String paymentMethodType)? initialized,
    TResult Function(String cardNumber)? cardNumberChanged,
    TResult Function(String securityCode)? securityCodeChanged,
    TResult Function(String expiryMonth)? expiryMonthChanged,
    TResult Function(String expiryYear)? expiryYearChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CardNumberChanged value) cardNumberChanged,
    required TResult Function(_SecurityCodeChanged value) securityCodeChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_CardNumberChanged value)? cardNumberChanged,
    TResult? Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CardNumberChanged value)? cardNumberChanged,
    TResult Function(_SecurityCodeChanged value)? securityCodeChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PaymentMethodFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$PaymentMethodFormState {
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PaymentMethodFailure, Unit>> get saveFailureOrSucessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodFormStateCopyWith<PaymentMethodFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodFormStateCopyWith<$Res> {
  factory $PaymentMethodFormStateCopyWith(PaymentMethodFormState value,
          $Res Function(PaymentMethodFormState) then) =
      _$PaymentMethodFormStateCopyWithImpl<$Res, PaymentMethodFormState>;
  @useResult
  $Res call(
      {PaymentMethod paymentMethod,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PaymentMethodFailure, Unit>> saveFailureOrSucessOption});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$PaymentMethodFormStateCopyWithImpl<$Res,
        $Val extends PaymentMethodFormState>
    implements $PaymentMethodFormStateCopyWith<$Res> {
  _$PaymentMethodFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PaymentMethodFormStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaymentMethod paymentMethod,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PaymentMethodFailure, Unit>> saveFailureOrSucessOption});

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaymentMethodFormStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_Initial(
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSucessOption: null == saveFailureOrSucessOption
          ? _value.saveFailureOrSucessOption
          : saveFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentMethodFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.paymentMethod,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final PaymentMethod paymentMethod;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<PaymentMethodFailure, Unit>> saveFailureOrSucessOption;

  @override
  String toString() {
    return 'PaymentMethodFormState(paymentMethod: $paymentMethod, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSucessOption: $saveFailureOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSucessOption,
                    saveFailureOrSucessOption) ||
                other.saveFailureOrSucessOption == saveFailureOrSucessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod, showErrorMessages,
      isEditing, isSaving, saveFailureOrSucessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PaymentMethodFormState {
  const factory _Initial(
      {required final PaymentMethod paymentMethod,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<PaymentMethodFailure, Unit>>
          saveFailureOrSucessOption}) = _$_Initial;

  @override
  PaymentMethod get paymentMethod;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<PaymentMethodFailure, Unit>> get saveFailureOrSucessOption;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
