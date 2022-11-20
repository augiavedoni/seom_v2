// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_balance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBalanceDto _$AccountBalanceDtoFromJson(Map<String, dynamic> json) {
  return _AccountBalanceDTO.fromJson(json);
}

/// @nodoc
mixin _$AccountBalanceDto {
  String get type => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBalanceDtoCopyWith<AccountBalanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBalanceDtoCopyWith<$Res> {
  factory $AccountBalanceDtoCopyWith(
          AccountBalanceDto value, $Res Function(AccountBalanceDto) then) =
      _$AccountBalanceDtoCopyWithImpl<$Res, AccountBalanceDto>;
  @useResult
  $Res call({String type, double balance});
}

/// @nodoc
class _$AccountBalanceDtoCopyWithImpl<$Res, $Val extends AccountBalanceDto>
    implements $AccountBalanceDtoCopyWith<$Res> {
  _$AccountBalanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountBalanceDTOCopyWith<$Res>
    implements $AccountBalanceDtoCopyWith<$Res> {
  factory _$$_AccountBalanceDTOCopyWith(_$_AccountBalanceDTO value,
          $Res Function(_$_AccountBalanceDTO) then) =
      __$$_AccountBalanceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, double balance});
}

/// @nodoc
class __$$_AccountBalanceDTOCopyWithImpl<$Res>
    extends _$AccountBalanceDtoCopyWithImpl<$Res, _$_AccountBalanceDTO>
    implements _$$_AccountBalanceDTOCopyWith<$Res> {
  __$$_AccountBalanceDTOCopyWithImpl(
      _$_AccountBalanceDTO _value, $Res Function(_$_AccountBalanceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? balance = null,
  }) {
    return _then(_$_AccountBalanceDTO(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AccountBalanceDTO extends _AccountBalanceDTO {
  const _$_AccountBalanceDTO({required this.type, required this.balance})
      : super._();

  factory _$_AccountBalanceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBalanceDTOFromJson(json);

  @override
  final String type;
  @override
  final double balance;

  @override
  String toString() {
    return 'AccountBalanceDto(type: $type, balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountBalanceDTO &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountBalanceDTOCopyWith<_$_AccountBalanceDTO> get copyWith =>
      __$$_AccountBalanceDTOCopyWithImpl<_$_AccountBalanceDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBalanceDTOToJson(
      this,
    );
  }
}

abstract class _AccountBalanceDTO extends AccountBalanceDto {
  const factory _AccountBalanceDTO(
      {required final String type,
      required final double balance}) = _$_AccountBalanceDTO;
  const _AccountBalanceDTO._() : super._();

  factory _AccountBalanceDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountBalanceDTO.fromJson;

  @override
  String get type;
  @override
  double get balance;
  @override
  @JsonKey(ignore: true)
  _$$_AccountBalanceDTOCopyWith<_$_AccountBalanceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
