import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';

import 'package:seom_v2/domain/payment_processor/i_payment_method_processor_repository.dart';
import 'package:seom_v2/domain/payment_processor/payment_processor_failure.dart';
import 'package:seom_v2/infrastructure/core/http/seom_client.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';

@Injectable(as: IPaymentProcessorRepository)
@lazySingleton
class PaymentProcessorRepository implements IPaymentProcessorRepository {
  final SeomClientContract _client;
  final UserDataSource _userDataSource;

  PaymentProcessorRepository(this._client, this._userDataSource);

  static const controllerPath = "pay";

  @override
  Future<Either<PaymentProcessorFailure, Unit>> executePayment({
    required String amount,
    required bool isAccountBalance,
    String? paymentMethodId,
  }) async {
    final SeomUser? seomUser = _userDataSource.user;

    final response = await _client.get(
      controllerPath,
      parameters: {
        "customerId": seomUser!.stripeId.getOrCrash(),
      },
    );

    return response.map(
      ok: (response) => right(unit),
      error: (_, __) => left(const PaymentProcessorFailure.unexpected()),
    );
  }
}
