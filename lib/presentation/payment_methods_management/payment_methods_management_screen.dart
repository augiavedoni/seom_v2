import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/injection.dart';

class PaymentMethodsManagementScreen extends StatelessWidget {
  const PaymentMethodsManagementScreen({super.key});

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
                "Medios de pago",
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
      body: BlocProvider(
        create: (_) => getIt<PaymentMethodWatcherBloc>()
          ..add(
            const PaymentMethodWatcherEvent.getAllStarted(),
          ),
        child:
            BlocListener<PaymentMethodWatcherBloc, PaymentMethodWatcherState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.maybeMap(
              loadSuccess: (state) => print(state.paymentMethods.toString()),
              loadFailure: (state) => print(state.paymentMethodFailure),
              orElse: () {},
            );
          },
          child: const SizedBox(),
        ),
      ),
    );
  }
}
