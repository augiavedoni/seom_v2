import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_information_card.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/add_payment_method.dart';

class PaymentMethodsList extends StatelessWidget {
  const PaymentMethodsList({
    super.key,
    required this.paymentMethods,
  });

  final KtList<PaymentMethod> paymentMethods;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final paymentMethod = paymentMethods.get(index);

                return GestureDetector(
                  onTap: () {
                    context.read<PaymentProcessorBloc>().add(
                          PaymentProcessorEvent.paymentMethodChanged(
                            paymentMethod,
                          ),
                        );

                    context.router.pop();
                  },
                  child: PaymentMethodInformationCard(
                    paymentMethod: paymentMethod,
                  ),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(
                height: 10,
              ),
              itemCount: paymentMethods.size,
            ),
            const AddPaymentMethodButton(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
