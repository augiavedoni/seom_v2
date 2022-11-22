import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_actor/payment_method_actor_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/add_payment_method_button.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_methods_overview.dart';

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
                'Medios de pago',
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
      floatingActionButton: const AddPaymentMethodButton(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<PaymentMethodWatcherBloc>()
              ..add(
                const PaymentMethodWatcherEvent.getAllStarted(),
              ),
          ),
          BlocProvider(
            create: (_) => getIt<PaymentMethodActorBloc>(),
          ),
        ],
        child: BlocListener<PaymentMethodActorBloc, PaymentMethodActorState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) => state.maybeMap(
            deleteFailure: (failure) {
              // TODO(augiavedoni): implement failure handling
              print(failure);
              return null;
            },
            orElse: () => null,
          ),
          child: const PaymentMethodsOverview(),
        ),
      ),
    );
  }
}
