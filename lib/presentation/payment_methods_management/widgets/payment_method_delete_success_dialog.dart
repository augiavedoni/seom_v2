import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class PaymentMethodDeleteSuccessDialog extends StatelessWidget {
  const PaymentMethodDeleteSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      dialogStatus: DialogStatus.success,
      title: 'Tu medio de pago fue borrado satisfactoriamente',
      description:
          'En caso de que quieras volver a utilizarlo deberás volver a añadirlo a tus medios de pago',
      mainButtonText: 'Aceptar',
      mainButtonFunctionality: () {
        context.router.popUntil(
          (route) =>
              route.settings.name == PaymentMethodsManagementScreenRoute.name,
        );

        context.read<PaymentMethodWatcherBloc>().add(
              const PaymentMethodWatcherEvent.getAllStarted(),
            );
      },
    );
  }
}
