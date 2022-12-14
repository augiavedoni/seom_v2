import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_actor/payment_method_actor_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/common_widgets/custom_app_bar.dart';
import 'package:seom_v2/presentation/common_widgets/loading_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/add_payment_method_button.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_delete_failure_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_delete_success_dialog.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_methods_overview.dart';

class PaymentMethodsManagementScreen extends StatelessWidget {
  const PaymentMethodsManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      child: BlocListener<PaymentMethodActorBloc, PaymentMethodActorState>(
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
          deleteFailure: (_) async => showDialog(
            context: context,
            builder: (_) => const PaymentMethodDeleteFailureDialog(),
          ),
          orElse: () => null,
        ),
        child: Scaffold(
          appBar: CustomAppBar(
            title: 'Medios de pago',
          ),
          backgroundColor: Colors.white,
          floatingActionButton: const AddPaymentMethodButton(),
          body: const PaymentMethodsOverview(),
        ),
      ),
    );
  }
}
