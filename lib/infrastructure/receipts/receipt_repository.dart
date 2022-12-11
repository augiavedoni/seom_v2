import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:seom_v2/domain/receipts/i_receipts_repository.dart';
import 'package:seom_v2/domain/receipts/receipt_failure.dart';
import 'package:seom_v2/infrastructure/core/http/seom_client.dart';

@Injectable(as: IReceiptRepository)
@lazySingleton
class ReceiptRepository extends IReceiptRepository {
  ReceiptRepository(this._client);

  final SeomClientContract _client;
  static const controllerPath = "receipts";

  @override
  Future<Either<ReceiptFailure, String>> retrieveReceiptUrl({
    required String chargeId,
  }) async {
    final response = await _client.get(
      controllerPath,
      parameters: {"chargeId": chargeId},
    );

    return response.map(
      ok: (response) => right(response['url']),
      error: (_, __) => left(const ReceiptFailure.unexpected()),
    );
  }
}
