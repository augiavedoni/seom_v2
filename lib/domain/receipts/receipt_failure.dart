import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_failure.freezed.dart';

@freezed
class ReceiptFailure with _$ReceiptFailure {
  const factory ReceiptFailure.unexpected() = _Unexpected;
}
