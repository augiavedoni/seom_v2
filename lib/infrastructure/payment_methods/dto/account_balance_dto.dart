// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/balance.dart';
import 'package:seom_v2/domain/payment_methods/value_objects/type.dart';

part 'account_balance_dto.freezed.dart';
part 'account_balance_dto.g.dart';

@freezed
class AccountBalanceDto with _$AccountBalanceDto {
  const AccountBalanceDto._();

  @JsonSerializable(explicitToJson: true)
  const factory AccountBalanceDto({
    required String type,
    required double balance,
  }) = _AccountBalanceDTO;

  factory AccountBalanceDto.fromDomain(AccountBalance accountBalance) {
    return AccountBalanceDto(
      type: accountBalance.type.getOrCrash(),
      balance: accountBalance.balance.getOrCrash(),
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod.accountBalance(
      type: Type(type),
      balance: Balance(balance),
    );
  }

  factory AccountBalanceDto.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceDtoFromJson(json);
}
