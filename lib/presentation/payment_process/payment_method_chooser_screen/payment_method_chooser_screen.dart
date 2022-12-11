import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/common_widgets/custom_app_bar.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/widgets/payment_method_chooser_overview.dart';

class PaymentMethodChooserScreen extends StatelessWidget {
  const PaymentMethodChooserScreen({
    super.key,
    required this.parkingTicketId,
  });

  final int parkingTicketId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Pagar estacionamiento',
      ),
      backgroundColor: Colors.white,
      body: BlocProvider<PaymentProcessorBloc>(
        create: (_) => getIt<PaymentProcessorBloc>()
          ..add(
            PaymentProcessorEvent.parkingTicketIdChanged(parkingTicketId),
          ),
        child: const PaymentMethodChooserOverview(),
      ),
    );
  }
}
