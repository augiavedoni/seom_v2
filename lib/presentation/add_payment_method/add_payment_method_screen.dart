import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_form/payment_method_form_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/injection.dart';
import 'package:seom_v2/presentation/add_payment_method/widgets/add_payment_method_form.dart';

class AddPaymentMethodScreen extends StatelessWidget {
  const AddPaymentMethodScreen({
    super.key,
    required this.paymentMethod,
  });

  final PaymentMethod paymentMethod;

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
            PaymentMethodFormEvent.initialized(
              optionOf(paymentMethod),
            ),
          ),
        child: BlocConsumer<PaymentMethodFormBloc, PaymentMethodFormState>(
          listenWhen: (previous, current) =>
              previous.saveFailureOrSucessOption !=
              current.saveFailureOrSucessOption,
          listener: (context, state) {
            state.saveFailureOrSucessOption.fold(
              () {},
              (either) {},
            );
          },
          buildWhen: (previous, current) =>
              previous.isSaving != current.isSaving,
          builder: (context, state) => const AddPaymentMethodForm(),
        ),
      ),
    );
  }
}
