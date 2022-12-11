part of 'receipts_bloc.dart';

@freezed
class ReceiptsEvent with _$ReceiptsEvent {
  const factory ReceiptsEvent.retrieveReceiptUrl({
    required String chargeId,
  }) = _RetrieveReceiptUrl;
}
