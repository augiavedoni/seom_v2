import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/auth/seom_user.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';

import 'package:seom_v2/domain/payment_methods/i_payment_method_repository.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';
import 'package:seom_v2/infrastructure/core/http/seom_client.dart';
import 'package:seom_v2/infrastructure/datasource/user_data_source.dart';
import 'package:seom_v2/infrastructure/payment_methods/dto/account_balance_dto.dart';
import 'package:seom_v2/infrastructure/payment_methods/dto/credit_card_dto.dart';
import 'package:seom_v2/infrastructure/payment_methods/dto/debit_card_dto.dart';

@Injectable(as: IPaymentMethodRepository)
@lazySingleton
class PaymentMethodRepository implements IPaymentMethodRepository {
  final SeomClientContract _client;
  final UserDataSource _userDataSource;

  PaymentMethodRepository(this._client, this._userDataSource);

  @override
  Future<Either<PaymentMethodFailure, KtList<PaymentMethod>>> getAll() async {
    final SeomUser? seomUser = _userDataSource.user;

    final response = await _client.get(
      "payment-methods",
      parameters: {
        "customerId": seomUser!.stripeId.getOrCrash(),
      },
    );

    return response.map(
      ok: (response) {
        final List<PaymentMethod> paymentMethods =
            response.map<PaymentMethod>((paymentMethod) {
          if (paymentMethod["type"] == "credit") {
            return CreditCardDto.fromJson(paymentMethod).toDomain();
          } else if (paymentMethod["type"] == "debit") {
            return DebitCardDto.fromJson(paymentMethod).toDomain();
          } else {
            return AccountBalanceDto.fromJson(paymentMethod).toDomain();
          }
        }).toList();

        return right<PaymentMethodFailure, KtList<PaymentMethod>>(
          paymentMethods.toImmutableList(),
        );
      },
      error: (_, __) {
        return left(const PaymentMethodFailure.unexpected());
      },
    );
  }

  @override
  Future<Either<PaymentMethodFailure, Unit>> add({
    required PaymentMethod paymentMethod,
  }) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Either<PaymentMethodFailure, Unit>> delete({
    required String paymentMethodId,
  }) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
