import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class AddPaymentMethodButton extends StatefulWidget {
  const AddPaymentMethodButton({super.key});

  @override
  State<AddPaymentMethodButton> createState() => _AddPaymentMethodButtonState();
}

class _AddPaymentMethodButtonState extends State<AddPaymentMethodButton> {
  late PaymentMethodWatcherBloc _paymentMethodWatcherBloc;

  @override
  void didChangeDependencies() {
    _paymentMethodWatcherBloc = context.read<PaymentMethodWatcherBloc>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () async {
        final cardType = await _showPaymentMethodTypeSelector(context);

        await context.router.pop();

        if (cardType != null) {
          final hasNewPaymentMethod = await context.router.push<bool>(
            AddPaymentMethodScreenRoute(
              cardType: cardType,
              isPaying: true,
            ),
          );

          if (hasNewPaymentMethod != null && hasNewPaymentMethod) {
            _paymentMethodWatcherBloc.add(
              const PaymentMethodWatcherEvent.getAllStarted(),
            );
          }
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: black,
            width: 2,
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: black,
              ),
              child: Center(
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Añadir medio de pago',
              style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _showPaymentMethodTypeSelector(
    BuildContext context,
  ) async =>
      Platform.isIOS
          ? await showCupertinoModalPopup<String?>(
              context: context,
              builder: (_) => CupertinoActionSheet(
                title: const Text('Añadir medio de pago'),
                message: const Text(
                  '¿Qué tipo de medio de pago deseas añadir?',
                ),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    onPressed: () => context.router.pop('debit'),
                    child: const Text('Tarjeta de débito'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () => context.router.pop('credit'),
                    child: const Text('Tarjeta de crédito'),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () => context.router.pop(),
                  child: const Text('Volver'),
                ),
              ),
            )
          : await showDialog<String?>(
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
                      onPressed: () => context.router.pop('debit'),
                      child: const Text('Tarjeta de débito'),
                    ),
                    TextButton(
                      child: const Text('Tarjeta de crédito'),
                      onPressed: () => context.router.pop('credit'),
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
}
