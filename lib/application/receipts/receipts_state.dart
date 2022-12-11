part of 'receipts_bloc.dart';

@freezed
class ReceiptsState with _$ReceiptsState {
  const factory ReceiptsState.initial() = _Initial;
  const factory ReceiptsState.loadInProgress() = _LoadInProgress;
  const factory ReceiptsState.loadSuccess(String receiptUrl) = _LoadSuccess;
  const factory ReceiptsState.loadFailure(
    ReceiptFailure failure,
  ) = _LoadFailure;
}
