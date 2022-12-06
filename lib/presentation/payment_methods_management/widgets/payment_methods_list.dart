import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/failed_payment_method.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_information_card.dart';

class PaymentMethodsList extends StatelessWidget {
  const PaymentMethodsList({
    super.key,
    required this.paymentMethods,
  });

  final KtList<PaymentMethod> paymentMethods;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: paymentMethods.size,
      itemBuilder: (context, index) {
        final paymentMethod = paymentMethods.get(index);

        if (paymentMethod.failureOption.isNone()) {
          return PaymentMethodInformationCard(
            paymentMethod: paymentMethod,
            canErase: true,
          );
        } else if (paymentMethod.failureOption.isSome()) {
          return FailedPaymentMethodCard(
            paymentMethod: paymentMethod,
          );
        }

        return const SizedBox();
      },
      separatorBuilder: (_, __) => const SizedBox(height: 10),
    );
  }
}
