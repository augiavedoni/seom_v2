import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_processor/payment_processor_bloc.dart';
import 'package:seom_v2/presentation/common_widgets/rounded_button.dart';

class ExecutePaymentButton extends StatelessWidget {
  const ExecutePaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentProcessorBloc, PaymentProcessorState>(
      buildWhen: (previous, current) =>
          previous.paymentMethod != current.paymentMethod,
      builder: (context, state) => RoundedButton.fill(
        text: 'Pagar',
        onPressed: state.paymentMethod != null ? () {} : null,
      ),
    );
  }
}
