import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/domain/payment_processor/payment_processor_failure.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/feedback/feedback_screen.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/execute_payment_button.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/payment_method_chooser_card.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class PaymentMethodChooserOverview extends StatelessWidget {
  const PaymentMethodChooserOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider<PaymentMethodWatcherBloc>(
      create: (_) => getIt<PaymentMethodWatcherBloc>()
        ..add(
          const PaymentMethodWatcherEvent.getAllStarted(),
        ),
      child: BlocListener<PaymentProcessorBloc, PaymentProcessorState>(
        listenWhen: (previous, current) =>
            previous.isSaving != current.isSaving,
        listener: (context, state) {
          if (state.isSaving) {
            context.router.push(
              const PaymentInProcessScreenRoute(),
            );
          } else {
            state.saveFailureOrSucessOption.fold(
              () => null,
              (response) => context.router.replace(
                response.fold(
                  (failure) => _getRejectedPaymentScreen(context, failure),
                  (_) => _getSuccessfulPaymentScreen(context),
                ),
              ),
            );
          }
        },
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
      ),
    );
  }

  FeedbackScreenRoute _getRejectedPaymentScreen(
    BuildContext context,
    PaymentProcessorFailure failure,
  ) =>
      FeedbackScreenRoute(
        mainImagePath: 'lib/presentation/core/assets/rejected_payment.svg',
        title: 'Ocurrió un error mientras intentábamos procesar tu pago',
        description: failure.map(
          unexpected: (_) => 'Te pedimos que vuelvas a intentarlo.',
          cardDeclined: (_) =>
              'Tu tarjeta fue rechazada. Te pedimos que vuelvas a intentarlo con otro medio de pago.',
        ),
        primaryButton: FeedbackButton(
          text: 'Volver',
          onPressed: () => context.router.pop(),
        ),
      );

  FeedbackScreenRoute _getSuccessfulPaymentScreen(
    BuildContext context,
  ) =>
      FeedbackScreenRoute(
        mainImagePath: 'lib/presentation/core/assets/successful_payment.svg',
        title: '¡Listo!',
        description:
            'Pudimos procesar tu pago correctamente. Podrás encontrar toda la información relacionada a este estacionamiento en tu listado de actividad reciente.',
        primaryButton: FeedbackButton(
          text: 'Cerrar',
          onPressed: () => context.router.popUntilRoot(),
        ),
      );
}
