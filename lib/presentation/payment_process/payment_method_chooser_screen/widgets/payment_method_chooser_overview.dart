import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/execute_payment_button.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/payment_method_chooser_card.dart';

class PaymentMethodChooserOverview extends StatelessWidget {
  const PaymentMethodChooserOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<PaymentMethodWatcherBloc>(
          create: (_) => getIt<PaymentMethodWatcherBloc>()
            ..add(
              const PaymentMethodWatcherEvent.getAllStarted(),
            ),
        ),
        BlocProvider<PaymentProcessorBloc>(
          create: (_) => getIt<PaymentProcessorBloc>(),
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.all(NavigationToolbar.kMiddleSpacing),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Medio de pago',
                    style: theme.textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const PaymentMethodChooserCard(),
                  const Spacer(),
                  const ExecutePaymentButton(),
                  const SizedBox(
                    height: NavigationToolbar.kMiddleSpacing,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
