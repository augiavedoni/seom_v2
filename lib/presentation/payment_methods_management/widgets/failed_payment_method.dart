import 'package:flutter/material.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';

class FailedPaymentMethodCard extends StatelessWidget {
  const FailedPaymentMethodCard({
    super.key,
    required this.paymentMethod,
  });

  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      key: Key(_getPaymentMethodKeyValue()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amber,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Center(
              child: const Icon(
                Icons.warning_amber_rounded,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                text:
                    'Ocurrió un error recuperando la información de este medio de pago. Por favor, contactate con soporte y brinda el siguiente código de error: ',
                style: theme.textTheme.bodyText2!.copyWith(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: paymentMethod.failureOption.fold(
                      () => null,
                      (failure) => failure.toString(),
                    ),
                    style: theme.textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPaymentMethodKeyValue() => paymentMethod.map(
        card: (card) => card.id.getOrCrash(),
        accountBalance: (_) => 'account-balance',
      );
}
