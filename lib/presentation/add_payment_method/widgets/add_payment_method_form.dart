import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_form/payment_method_form_bloc.dart';
import 'package:seom_v2/presentation/add_payment_method/widgets/card_number_input.dart';
import 'package:seom_v2/presentation/common_widgets/rounded_button.dart';

class AddPaymentMethodForm extends StatelessWidget {
  const AddPaymentMethodForm({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<PaymentMethodFormBloc, PaymentMethodFormState>(
      buildWhen: (previous, current) =>
          previous.showErrorMessages != current.showErrorMessages,
      builder: (context, state) => Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: NavigationToolbar.kMiddleSpacing,
            ),
            child: Column(
              children: [
                const CardNumberInput(),
                const SizedBox(
                  height: 20,
                ),
                RoundedButton.fill(
                  text: 'Añadir',
                  minimunSize: Size.fromHeight(size.height * 0.075),
                  onPressed: () => context.read<PaymentMethodFormBloc>().add(
                        PaymentMethodFormEvent.saved(),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
