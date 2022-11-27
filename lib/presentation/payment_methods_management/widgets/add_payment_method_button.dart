import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class AddPaymentMethodButton extends StatelessWidget {
  const AddPaymentMethodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final paymentMethod = await _showPaymentMethodTypeSelector(context);

        if (paymentMethod != null) {
          context.router.push(
            AddPaymentMethodScreenRoute(
              paymentMethod: paymentMethod,
            ),
          );
        }
      },
      backgroundColor: green,
      child: const Icon(Icons.add_rounded),
    );
  }

  Future<PaymentMethod?> _showPaymentMethodTypeSelector(
    BuildContext context,
  ) async {
    PaymentMethod? paymentMethod;

    Platform.isIOS
        ? await showCupertinoModalPopup<void>(
            context: context,
            builder: (_) => CupertinoActionSheet(
              title: const Text('Añadir medio de pago'),
              message: const Text(
                '¿Qué tipo de medio de pago deseas añadir?',
              ),
              actions: <CupertinoActionSheetAction>[
                CupertinoActionSheetAction(
                  onPressed: () {
                    paymentMethod = PaymentMethod.emptyDebitCard();

                    context.router.pop();
                  },
                  child: const Text('Tarjeta de débito'),
                ),
                CupertinoActionSheetAction(
                  onPressed: () {
                    paymentMethod = PaymentMethod.emptyCreditCard();

                    context.router.pop();
                  },
                  child: const Text('Tarjeta de crédito'),
                ),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () => context.router.pop(),
                child: const Text('Volver'),
              ),
            ),
          )
        : await showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text(
                'Añadir medio de pago',
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    '¿Qué tipo de medio de pago deseas añadir?',
                  ),
                  TextButton(
                    onPressed: () {
                      paymentMethod = PaymentMethod.emptyDebitCard();

                      context.router.pop();
                    },
                    child: const Text('Tarjeta de débito'),
                  ),
                  TextButton(
                    child: const Text('Tarjeta de crédito'),
                    onPressed: () {
                      paymentMethod = PaymentMethod.emptyCreditCard();

                      context.router.pop();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    child: const Text(
                      "Volver",
                      style: TextStyle(
                        color: grey,
                      ),
                    ),
                    onPressed: () => context.router.pop(),
                  ),
                ],
              ),
            ),
          );

    return paymentMethod;
  }
}
