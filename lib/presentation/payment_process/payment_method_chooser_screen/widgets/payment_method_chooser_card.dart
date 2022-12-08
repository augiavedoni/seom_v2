import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_information_card.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_loading.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/payment_methods_list.dart';

class PaymentMethodChooserCard extends StatelessWidget {
  const PaymentMethodChooserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocConsumer<PaymentMethodWatcherBloc, PaymentMethodWatcherState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) => state.maybeMap(
        loadFailure: (_) async => _showPaymentMethodsRetrievalErrorDialog(
          context,
        ),
        orElse: () => null,
      ),
      buildWhen: (previous, current) => previous != current,
      builder: (_, state) => state.maybeMap(
        loadSuccess: (response) {
          context.read<PaymentProcessorBloc>()
            ..add(
              PaymentProcessorEvent.paymentMethodChanged(
                response.paymentMethods.get(0),
              ),
            );

          return GestureDetector(
            onTap: () async => showModalBottomSheet(
              enableDrag: false,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
              ),
              builder: (_) => Container(
                height: size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(
                    NavigationToolbar.kMiddleSpacing,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elegí el medio de pago con el cual deseas a pagar:',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MultiBlocProvider(
                        providers: [
                          BlocProvider<PaymentProcessorBloc>.value(
                            value: context.read<PaymentProcessorBloc>(),
                          ),
                          BlocProvider<PaymentMethodWatcherBloc>.value(
                            value: context.read<PaymentMethodWatcherBloc>(),
                          ),
                        ],
                        child: PaymentMethodsList(
                          paymentMethods: response.paymentMethods,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            child: BlocBuilder<PaymentProcessorBloc, PaymentProcessorState>(
              buildWhen: (previous, current) =>
                  previous.paymentMethod != current.paymentMethod,
              builder: (_, state) {
                final selectedPaymentMethod =
                    state.paymentMethod ?? response.paymentMethods.get(0);

                return Column(
                  children: [
                    PaymentMethodInformationCard(
                      paymentMethod: selectedPaymentMethod,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    selectedPaymentMethod.type.getOrCrash() == 'credit'
                        ? Row(
                            children: [
                              Icon(
                                Icons.info_outline_rounded,
                                color: black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'El cobro se hará en un pago.',
                              ),
                            ],
                          )
                        : const SizedBox(),
                    selectedPaymentMethod is AccountBalance &&
                            selectedPaymentMethod.balance.getOrCrash() <= -200
                        ? Row(
                            children: [
                              Icon(
                                Icons.warning_amber_rounded,
                                color: Colors.red[900],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'No podrás pagar con tu saldo ya que consumiste todo el límite descubierto disponible. Para poder volver a utilizarlo, deberás hacer una recarga.',
                                ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                  ],
                );
              },
            ),
          );
        },
        orElse: () => const PaymentMethodsLoading(),
      ),
    );
  }

  Future<Object?> _showPaymentMethodsRetrievalErrorDialog(
    BuildContext context,
  ) async =>
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => CustomDialog(
          dialogStatus: DialogStatus.error,
          title: 'Ocurrió un error obteniendo los medios de pago',
          description: 'Te pedimos que vuelvas a intentarlo.',
          mainButtonText: 'Reintentar',
          mainButtonFunctionality: () {
            context.router.popForced();

            context.read<PaymentMethodWatcherBloc>().add(
                  const PaymentMethodWatcherEvent.getAllStarted(),
                );
          },
        ),
      );
}
