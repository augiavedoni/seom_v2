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
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
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
  $Res call({Option<PaymentMethod> initialPaymentMethodOption});
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
    Object? initialPaymentMethodOption = null,
  }) {
    return _then(_$_Initialized(
      null == initialPaymentMethodOption
          ? _value.initialPaymentMethodOption
          : initialPaymentMethodOption // ignore: cast_nullable_to_non_nullable
              as Option<PaymentMethod>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPaymentMethodOption);

  @override
  final Option<PaymentMethod> initialPaymentMethodOption;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.initialized(initialPaymentMethodOption: $initialPaymentMethodOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.initialPaymentMethodOption,
                    initialPaymentMethodOption) ||
                other.initialPaymentMethodOption ==
                    initialPaymentMethodOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialPaymentMethodOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialPaymentMethodOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initialPaymentMethodOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPaymentMethodOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
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
  const factory _Initialized(
      final Option<PaymentMethod> initialPaymentMethodOption) = _$_Initialized;

  Option<PaymentMethod> get initialPaymentMethodOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BrandChangedCopyWith<$Res> {
  factory _$$_BrandChangedCopyWith(
          _$_BrandChanged value, $Res Function(_$_BrandChanged) then) =
      __$$_BrandChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String brand});
}

/// @nodoc
class __$$_BrandChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_BrandChanged>
    implements _$$_BrandChangedCopyWith<$Res> {
  __$$_BrandChangedCopyWithImpl(
      _$_BrandChanged _value, $Res Function(_$_BrandChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
  }) {
    return _then(_$_BrandChanged(
      null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BrandChanged implements _BrandChanged {
  const _$_BrandChanged(this.brand);

  @override
  final String brand;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.brandChanged(brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandChanged &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandChangedCopyWith<_$_BrandChanged> get copyWith =>
      __$$_BrandChangedCopyWithImpl<_$_BrandChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return brandChanged(brand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return brandChanged?.call(brand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (brandChanged != null) {
      return brandChanged(brand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return brandChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return brandChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (brandChanged != null) {
      return brandChanged(this);
    }
    return orElse();
  }
}

abstract class _BrandChanged implements PaymentMethodFormEvent {
  const factory _BrandChanged(final String brand) = _$_BrandChanged;

  String get brand;
  @JsonKey(ignore: true)
  _$$_BrandChangedCopyWith<_$_BrandChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExpiryMonthChangedCopyWith<$Res> {
  factory _$$_ExpiryMonthChangedCopyWith(_$_ExpiryMonthChanged value,
          $Res Function(_$_ExpiryMonthChanged) then) =
      __$$_ExpiryMonthChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int expiryMonth});
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
              as int,
    ));
  }
}

/// @nodoc

class _$_ExpiryMonthChanged implements _ExpiryMonthChanged {
  const _$_ExpiryMonthChanged(this.expiryMonth);

  @override
  final int expiryMonth;

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
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return expiryMonthChanged(expiryMonth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return expiryMonthChanged?.call(expiryMonth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
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
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return expiryMonthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return expiryMonthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
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
  const factory _ExpiryMonthChanged(final int expiryMonth) =
      _$_ExpiryMonthChanged;

  int get expiryMonth;
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
  $Res call({int expiryYear});
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
              as int,
    ));
  }
}

/// @nodoc

class _$_ExpiryYearChanged implements _ExpiryYearChanged {
  const _$_ExpiryYearChanged(this.expiryYear);

  @override
  final int expiryYear;

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
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return expiryYearChanged(expiryYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return expiryYearChanged?.call(expiryYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
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
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return expiryYearChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return expiryYearChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
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
  const factory _ExpiryYearChanged(final int expiryYear) = _$_ExpiryYearChanged;

  int get expiryYear;
  @JsonKey(ignore: true)
  _$$_ExpiryYearChangedCopyWith<_$_ExpiryYearChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastFourDigitsChangedCopyWith<$Res> {
  factory _$$_LastFourDigitsChangedCopyWith(_$_LastFourDigitsChanged value,
          $Res Function(_$_LastFourDigitsChanged) then) =
      __$$_LastFourDigitsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastFourDigits});
}

/// @nodoc
class __$$_LastFourDigitsChangedCopyWithImpl<$Res>
    extends _$PaymentMethodFormEventCopyWithImpl<$Res, _$_LastFourDigitsChanged>
    implements _$$_LastFourDigitsChangedCopyWith<$Res> {
  __$$_LastFourDigitsChangedCopyWithImpl(_$_LastFourDigitsChanged _value,
      $Res Function(_$_LastFourDigitsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastFourDigits = null,
  }) {
    return _then(_$_LastFourDigitsChanged(
      null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastFourDigitsChanged implements _LastFourDigitsChanged {
  const _$_LastFourDigitsChanged(this.lastFourDigits);

  @override
  final String lastFourDigits;

  @override
  String toString() {
    return 'PaymentMethodFormEvent.lastFourDigitsChanged(lastFourDigits: $lastFourDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastFourDigitsChanged &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastFourDigits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LastFourDigitsChangedCopyWith<_$_LastFourDigitsChanged> get copyWith =>
      __$$_LastFourDigitsChangedCopyWithImpl<_$_LastFourDigitsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return lastFourDigitsChanged(lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return lastFourDigitsChanged?.call(lastFourDigits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (lastFourDigitsChanged != null) {
      return lastFourDigitsChanged(lastFourDigits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return lastFourDigitsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return lastFourDigitsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (lastFourDigitsChanged != null) {
      return lastFourDigitsChanged(this);
    }
    return orElse();
  }
}

abstract class _LastFourDigitsChanged implements PaymentMethodFormEvent {
  const factory _LastFourDigitsChanged(final String lastFourDigits) =
      _$_LastFourDigitsChanged;

  String get lastFourDigits;
  @JsonKey(ignore: true)
  _$$_LastFourDigitsChangedCopyWith<_$_LastFourDigitsChanged> get copyWith =>
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
    required TResult Function(Option<PaymentMethod> initialPaymentMethodOption)
        initialized,
    required TResult Function(String brand) brandChanged,
    required TResult Function(int expiryMonth) expiryMonthChanged,
    required TResult Function(int expiryYear) expiryYearChanged,
    required TResult Function(String lastFourDigits) lastFourDigitsChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult? Function(String brand)? brandChanged,
    TResult? Function(int expiryMonth)? expiryMonthChanged,
    TResult? Function(int expiryYear)? expiryYearChanged,
    TResult? Function(String lastFourDigits)? lastFourDigitsChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PaymentMethod> initialPaymentMethodOption)?
        initialized,
    TResult Function(String brand)? brandChanged,
    TResult Function(int expiryMonth)? expiryMonthChanged,
    TResult Function(int expiryYear)? expiryYearChanged,
    TResult Function(String lastFourDigits)? lastFourDigitsChanged,
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
    required TResult Function(_BrandChanged value) brandChanged,
    required TResult Function(_ExpiryMonthChanged value) expiryMonthChanged,
    required TResult Function(_ExpiryYearChanged value) expiryYearChanged,
    required TResult Function(_LastFourDigitsChanged value)
        lastFourDigitsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_BrandChanged value)? brandChanged,
    TResult? Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult? Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult? Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BrandChanged value)? brandChanged,
    TResult Function(_ExpiryMonthChanged value)? expiryMonthChanged,
    TResult Function(_ExpiryYearChanged value)? expiryYearChanged,
    TResult Function(_LastFourDigitsChanged value)? lastFourDigitsChanged,
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
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
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
      {PaymentMethod? paymentMethod,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PaymentMethodFailure, Unit>> saveFailureOrSucessOption});

  $PaymentMethodCopyWith<$Res>? get paymentMethod;
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
    Object? paymentMethod = freezed,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_value.copyWith(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
  $PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod!, (value) {
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
      {PaymentMethod? paymentMethod,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<PaymentMethodFailure, Unit>> saveFailureOrSucessOption});

  @override
  $PaymentMethodCopyWith<$Res>? get paymentMethod;
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
    Object? paymentMethod = freezed,
    Object? showErrorMessages = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? saveFailureOrSucessOption = null,
  }) {
    return _then(_$_Initial(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
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
      {this.paymentMethod,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSucessOption});

  @override
  final PaymentMethod? paymentMethod;
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
      {final PaymentMethod? paymentMethod,
      required final bool showErrorMessages,
      required final bool isEditing,
      required final bool isSaving,
      required final Option<Either<PaymentMethodFailure, Unit>>
          saveFailureOrSucessOption}) = _$_Initial;

  @override
  PaymentMethod? get paymentMethod;
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
