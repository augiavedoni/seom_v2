import 'package:dartz/dartz.dart';
import 'package:seom_v2/domain/receipts/receipt_failure.dart';

abstract class IReceiptRepository {
  Future<Either<ReceiptFailure, String>> retrieveReceiptUrl({
    required String chargeId,
  });
}
