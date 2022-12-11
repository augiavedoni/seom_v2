import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/receipts/receipts_bloc.dart';
import 'package:seom_v2/domain/receipts/entities/receipt.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/common_widgets/loading_dialog.dart';
import 'package:seom_v2/presentation/feedback/feedback_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessfulPaymentScreen extends StatelessWidget {
  const SuccessfulPaymentScreen({
    super.key,
    required this.receipt,
  });

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReceiptsBloc>(
      create: (_) => getIt<ReceiptsBloc>(),
      child: Builder(
        builder: (context) => BlocListener<ReceiptsBloc, ReceiptsState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) => state.maybeMap(
            loadInProgress: (_) async => await showDialog(
              context: context,
              builder: (_) => const LoadingDialog(),
            ),
            loadSuccess: (value) async {
              context.router.popForced();

              return await launchUrl(
                Uri.parse(value.receiptUrl),
                mode: LaunchMode.externalApplication,
              );
            },
            loadFailure: (failure) => failure.failure.map(
              unexpected: (_) async {
                context.router.popForced();

                return await showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                    dialogStatus: DialogStatus.error,
                    title: 'Oops... ocurrió un error',
                    description:
                        'No pudimos obtener el comprobante. Te pedimos que vuelvas a intentarlo más tarde.',
                    mainButtonText: 'Cerrar',
                    mainButtonFunctionality: context.router.pop,
                  ),
                );
              },
            ),
            orElse: () => null,
          ),
          child: FeedbackScreen(
            mainImagePath:
                'lib/presentation/core/assets/successful_payment.svg',
            title: '¡Listo!',
            description:
                'Pudimos procesar tu pago correctamente. Podrás encontrar toda la información relacionada a este estacionamiento en tu listado de actividad reciente.',
            primaryButton: FeedbackButton(
              text: 'Cerrar',
              onPressed: () => context.router.popUntilRoot(),
            ),
            secondaryButton: receipt.hasGeneratedReceipt
                ? FeedbackButton(
                    text: 'Ver comprobante',
                    onPressed: () => context.read<ReceiptsBloc>().add(
                          ReceiptsEvent.retrieveReceiptUrl(
                            chargeId: receipt.chargeId.getOrCrash(),
                          ),
                        ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
