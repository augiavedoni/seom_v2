import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class AddPaymentMethodButton extends StatelessWidget {
  const AddPaymentMethodButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PaymentMethodWatcherBloc>.value(
      value: context.read<PaymentMethodWatcherBloc>(),
      child: Builder(
        builder: (context) {
          return FloatingActionButton(
            /* onPressed: () async {
              final paymentMethod = await _showPaymentMethodTypeSelector(context);

              if (paymentMethod != null) {
                context.router.push(
                  AddPaymentMethodScreenRoute(
                    paymentMethod: paymentMethod,
                  ),
                );
              }
            }, */
            onPressed: () => context.router.push(
              AddPaymentMethodScreenRoute(
                paymentMethod: PaymentMethod.emptyCard(),
              ),
            ),
            backgroundColor: green,
            child: const Icon(Icons.add_rounded),
          );
        },
      ),
    );
  }

  Future<PaymentMethod?> _showPaymentMethodTypeSelector(
    BuildContext context,
  ) async =>
      Platform.isIOS
          ? await showCupertinoModalPopup<PaymentMethod?>(
              context: context,
              builder: (_) => CupertinoActionSheet(
                title: const Text('Añadir medio de pago'),
                message: const Text(
                  '¿Qué tipo de medio de pago deseas añadir?',
                ),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    onPressed: () => context.router.pop(
                      PaymentMethod.emptyCard(),
                    ),
                    child: const Text('Tarjeta de débito'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () => context.router.pop(
                      PaymentMethod.emptyCard(),
                    ),
                    child: const Text('Tarjeta de crédito'),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () => context.router.pop(),
                  child: const Text('Volver'),
                ),
              ),
            )
          : await showDialog<PaymentMethod?>(
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
                      onPressed: () => context.router.pop(
                        PaymentMethod.emptyCard(),
                      ),
                      child: const Text('Tarjeta de débito'),
                    ),
                    TextButton(
                      child: const Text('Tarjeta de crédito'),
                      onPressed: () => context.router.pop(
                        PaymentMethod.emptyCard(),
                      ),
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
