import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seom_v2/domain/core/failures.dart';
import 'package:seom_v2/domain/receipts/value_objects/amount.dart';
import 'package:seom_v2/domain/receipts/value_objects/charge_id.dart';
import 'package:seom_v2/domain/receipts/value_objects/receipt_date.dart';

part 'receipt.freezed.dart';

@freezed
class Receipt with _$Receipt {
  const Receipt._();

  const factory Receipt({
    required int id,
    required ReceiptDate date,
    required Amount amount,
    required bool paid,
    required ChargeId chargeId,
    required bool hasGeneratedReceipt,
  }) = _Receipt;

  Option<ValueFailure<dynamic>> get failureOption {
    return date.failureOrUnit
        .andThen(amount.failureOrUnit)
        .andThen(chargeId.failureOrUnit)
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }
}
