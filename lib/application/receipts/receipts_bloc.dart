import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:seom_v2/domain/receipts/i_receipts_repository.dart';
import 'package:seom_v2/domain/receipts/receipt_failure.dart';

part 'receipts_event.dart';
part 'receipts_state.dart';
part 'receipts_bloc.freezed.dart';

@injectable
class ReceiptsBloc extends Bloc<ReceiptsEvent, ReceiptsState> {
  final IReceiptRepository _receiptRepository;

  ReceiptsBloc(
    this._receiptRepository,
  ) : super(const ReceiptsState.initial()) {
    on<ReceiptsEvent>(
      (event, emit) async => event.map<FutureOr<void>>(
        retrieveReceiptUrl: (event) async {
          emit(const ReceiptsState.loadInProgress());

          final failureOrSuccess = await _receiptRepository.retrieveReceiptUrl(
            chargeId: event.chargeId,
          );

          emit(
            failureOrSuccess.fold(
              (failure) => ReceiptsState.loadFailure(failure),
              (receiptUrl) => ReceiptsState.loadSuccess(receiptUrl),
            ),
          );
        },
      ),
    );
  }
}
