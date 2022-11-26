import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

class PaymentMethodDeleteFailureDialog extends StatelessWidget {
  const PaymentMethodDeleteFailureDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      dialogStatus: DialogStatus.error,
      title: 'Ocurrió un error mientras eliminabamos el medio de pago',
      description: 'Te pedimos que vuelvas a intentarlo más tarde',
      mainButtonText: 'Cerrar',
      mainButtonFunctionality: () => context.router.popUntil(
        (route) =>
            route.settings.name == PaymentMethodsManagementScreenRoute.name,
      ),
    );
  }
}
