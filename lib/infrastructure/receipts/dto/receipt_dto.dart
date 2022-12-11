// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:seom_v2/domain/receipts/entities/receipt.dart';
import 'package:seom_v2/domain/receipts/value_objects/amount.dart';
import 'package:seom_v2/domain/receipts/value_objects/charge_id.dart';
import 'package:seom_v2/domain/receipts/value_objects/receipt_date.dart';

part 'receipt_dto.freezed.dart';
part 'receipt_dto.g.dart';

@freezed
class ReceiptDto with _$ReceiptDto {
  const ReceiptDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ReceiptDto({
    required int id,
    required String date,
    required String amount,
    required bool paid,
    String? chargeId,
    required bool hasGeneratedReceipt,
  }) = _ReceiptDto;

  factory ReceiptDto.fromDomain(Receipt receipt) {
    return ReceiptDto(
      id: receipt.id,
      date: DateFormat('yyyy-MM-dd').format(receipt.date.getOrCrash()),
      amount: receipt.amount.getOrCrash(),
      paid: receipt.paid,
      chargeId: receipt.chargeId.getOrCrash(),
      hasGeneratedReceipt: receipt.hasGeneratedReceipt,
    );
  }

  Receipt toDomain() {
    return Receipt(
      id: id,
      date: ReceiptDate(date),
      amount: Amount(amount),
      paid: paid,
      chargeId: ChargeId(chargeId ?? ''),
      hasGeneratedReceipt: hasGeneratedReceipt,
    );
  }

  factory ReceiptDto.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDtoFromJson(json);
}
