import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/payment_method_chooser_overview.dart';

class PaymentMethodChooserScreen extends StatelessWidget {
  const PaymentMethodChooserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Pagar estacionamiento',
                style: theme.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        iconTheme: theme.iconTheme.copyWith(color: Colors.black),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: const PaymentMethodChooserOverview(),
    );
  }
}
