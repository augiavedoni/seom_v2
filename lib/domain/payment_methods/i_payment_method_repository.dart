import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/domain/payment_methods/payment_method_failure.dart';

abstract class IPaymentMethodRepository {
  Future<Either<PaymentMethodFailure, KtList<PaymentMethod>>> getAll();
  Future<Either<PaymentMethodFailure, Unit>> add({
    required PaymentMethod paymentMethod,
  });
  Future<Either<PaymentMethodFailure, Unit>> delete({
    required String paymentMethodId,
  });
}
