import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_form/payment_method_form_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/add_payment_method/widgets/add_payment_method_form.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/common_widgets/loading_dialog.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({
    super.key,
    required this.cardType,
    required this.isPaying,
  });

  final String cardType;
  final bool isPaying;

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
                'Añadir medio de pago',
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
      body: BlocProvider<PaymentMethodFormBloc>(
        create: (_) => getIt<PaymentMethodFormBloc>()
          ..add(
            PaymentMethodFormEvent.initialized(cardType),
          ),
        child: BlocConsumer<PaymentMethodFormBloc, PaymentMethodFormState>(
          listenWhen: (previous, current) =>
              previous.isSaving != current.isSaving,
          listener: (context, state) async {
            if (state.isSaving) {
              await showDialog(
                barrierDismissible: true,
                context: context,
                builder: (_) => const LoadingDialog(),
              );

              return;
            } else if (state.saveFailureOrSucessOption.isSome()) {
              context.router.popForced();

              state.saveFailureOrSucessOption.fold(
                () => null,
                (result) => result.fold(
                  (failure) async => await showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (_) => CustomDialog(
                      dialogStatus: DialogStatus.error,
                      title: 'Oops... ha ocurrido un error',
                      description:
                          'No pudimos añadir el medio de pago. Te pedimos que vuelvas a intentarlo.',
                      mainButtonText: 'Cerrar',
                      mainButtonFunctionality: () => context.router.pop(),
                    ),
                  ),
                  (_) async => await showDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (_) => CustomDialog(
                      dialogStatus: DialogStatus.success,
                      title: '¡Listo!',
                      description: isPaying
                          ? 'Pudimos agregar el medio de pago correctamente. Ahora te llevaremos de nuevo al proceso de pago donde podrás elegirlo para pagar el estacionamiento más reciente.'
                          : 'Pudimos agregar el medio de pago correctamente. A partir de ahora vas a poder utilizarlo para abonar el SEOM.',
                      mainButtonText: isPaying ? 'Volver' : 'Cerrar',
                      mainButtonFunctionality: () async {
                        await context.router.pop();
                        await context.router.pop<bool>(true);
                      },
                    ),
                  ),
                ),
              );

              return;
            }
          },
          buildWhen: (previous, current) =>
              previous.isSaving != current.isSaving,
          builder: (context, state) => const AddPaymentMethodForm(),
        ),
      ),
    );
  }
}
