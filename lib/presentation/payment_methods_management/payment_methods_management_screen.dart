import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_actor/payment_method_actor_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/common_widgets/loading_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/add_payment_method_button.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_delete_failure_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_delete_success_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_methods_overview.dart';

class PaymentMethodsManagementScreen extends StatelessWidget {
  const PaymentMethodsManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MultiBlocProvider(
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
      child: MultiBlocListener(
        listeners: [
          BlocListener<PaymentMethodActorBloc, PaymentMethodActorState>(
            listenWhen: (previous, current) => previous != current,
            listener: (context, state) => state.maybeMap(
              deleteFailure: (_) async => showDialog(
                context: context,
                builder: (_) => const PaymentMethodDeleteFailureDialog(),
              ),
              orElse: () => null,
            ),
          ),
          BlocListener<PaymentMethodActorBloc, PaymentMethodActorState>(
            listenWhen: (previous, current) => previous != current,
            listener: (context, state) => state.maybeMap(
              actionInProgress: (_) async {
                await context.router.pop();

                return await showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => const LoadingDialog(),
                );
              },
              deleteSuccess: (_) async => showDialog(
                context: context,
                builder: (_) => BlocProvider<PaymentMethodWatcherBloc>.value(
                  value: context.read<PaymentMethodWatcherBloc>(),
                  child: const PaymentMethodDeleteSuccessDialog(),
                ),
              ),
              orElse: () => null,
            ),
          ),
        ],
        child: Scaffold(
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
          body: const PaymentMethodsOverview(),
        ),
      ),
    );
  }
}
